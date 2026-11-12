import assert from "node:assert/strict";
import { test } from "node:test";
import dayjs from "dayjs";
import weekOfYear from "dayjs/plugin/weekOfYear.js";
import axios from "axios";
import * as c from "../js-out/calcit.core.mjs";
import { decode_op, decode_schedule, decode_task, read_schedule_document, store } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";
import { comp_container } from "../js-out/app.comp.container.mjs";
import { comp_viewer, comp_time, format_duration, get_done_time, format_dayjs } from "../js-out/app.comp.viewer.mjs";
import { event__GT_edn } from "../js-out/respo.util.format.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
import { begin_upload, upload_schedule_$x_ } from "../js-out/app.comp.nav.mjs";
dayjs.extend(weekOfYear);
const t = c.init_tags(["tasks", "archives", "id", "text", "created-time", "done-time", "archived-time", "content", "schedule", "original", "router", "name", "viewer", "states", "cursor", "data", "editor", "value", "event", "children", "input", "click", "node", "messages", "hydrate-storage"]);
const map = c._$n__$M_;
const field = (v, key) => c.option_$o_unwrap(c.get(v, key));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const task = (id, text, done = null) => map(t.id, id, t.text, text, t["created-time"], Date.UTC(2024, 0, 1, 12), t["done-time"], done, t["archived-time"], null);
const content = () => map(t.tasks, map("active", task("active", "active fixture")), t.archives, map("archived", task("archived", "archived fixture", Date.UTC(2024, 0, 3, 12))));
function handler(node, kind) {
  if (c.enum_$q_(node)) {
    if (node.tag.value === "none") return;
    return handler(c._$n_enum_$o_nth(node, 1), kind);
  }
  if (component_$q_(node)) return handler(c.option_$o_unwrap(component_tree(node)), kind);
  const event = c.get(node, t.event);
  if (c.option_$o_some_$q_(event)) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (c.option_$o_some_$q_(fn)) return c.option_$o_unwrap(fn);
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) {
    const found = handler(field(pair, t.node), kind);
    if (found) return found;
  }
}
test("decode validates all task fields and rejects malformed storage", () => {
  const decoded = decode_schedule(content());
  assert.match(c.format_cirru_edn(decoded), /Schedule/);
  for (const invalid of ["not a map", map(), map(t.tasks, map("bad", map(t.id, "bad")), t.archives, map())]) assert.throws(() => decode_schedule(invalid));
  assert.throws(() => decode_schedule(map(t.tasks, map(42, task("bad", "text")), t.archives, map())), /string task key/);
  assert.throws(() => decode_schedule(map(t.tasks, map(), t.archives, c._$L_())), /task map/);
  assert.throws(() => decode_task(c.assoc(task("bad", "text"), t["done-time"], "not a timestamp")));
  const currentStorage = `%{} 'Store (:dragging-id |) (:dropping-id |) (:pointer 0)
  :archives $ {}
  :states $ {}
  :tasks $ {} $ |root
    %{} 'Task (:created-time 0) (:done? false) (:id |root) (:sort-id |T)
      :text |Current-Schedule-Struct-fixture
      :archived-time $ %:: 'Option 'none
      :done-time $ %:: 'Option 'none`;
  assert.match(c.format_cirru_edn(decode_schedule(c.parse_cirru_edn(currentStorage))), /Current-Schedule-Struct-fixture/);
  assert.throws(() => decode_schedule(c.parse_cirru_edn(currentStorage.replace(":done-time $ %:: 'Option 'none", ":done-time $ %:: 'Option 'some |invalid"))));
});
test("active and archived tasks render with year grouping", () => {
  const html = make_string(comp_viewer(decode_schedule(content())));
  for (const text of ["active fixture", "archived fixture", "2024", "week"]) assert.ok(html.includes(text), text);
  assert.match(make_string(comp_viewer(decode_schedule(map(t.tasks, map(), t.archives, map())))), /Tasks/);
});
test("optional times preserve placeholder and inclusive duration semantics", () => {
  assert.match(make_string(comp_time(field(decode_task(task("none", "fallback")), t["done-time"]))), /\?\?:\?\?/);
  const decoded = decode_task(task("done", "duration", Date.UTC(2024, 0, 3, 12)));
  assert.equal(format_duration(decoded), "3d");
  assert.equal(format_dayjs(get_done_time(decode_task(task("none", "fallback"))), "YYYY-MM-DD"), "2021-01-01");
});
test("editor input and submit dispatch Enum content and router updates", () => {
  const text = c.format_cirru_edn(content());
  let db = store;
  const dispatch = (...args) => {
    assert.equal(args.length, 1);
    db = updater(db, decode_op(args[0]), "fixture", 0);
  };
  const input = handler(comp_container(db), t.input);
  assert.equal(typeof input, "function");
  input(event__GT_edn({ type: "input", target: { value: text } }), dispatch);
  const submit = handler(comp_container(db), t.click);
  assert.equal(typeof submit, "function");
  submit(null, dispatch);
  assert.equal(field(field(db, t.router), t.name), t.viewer);
  assert.ok(c._$e_(field(field(db, t.content), t.original), content()));
  assert.ok(c._$e_(field(field(db, t.content), t.schedule), decode_schedule(content())));
});
test("invalid editor content leaves the previous document and route intact", () => {
  let db = store;
  const dispatch = op => { db = updater(db, decode_op(op), "fixture", 0); };
  const input = handler(comp_container(db), t.input);
  input(event__GT_edn({ type: "input", target: { value: "do |invalid" } }), dispatch);
  const draft = db;
  assert.throws(() => handler(comp_container(db), t.click)(null, dispatch));
  assert.equal(db, draft);
});
test("nested editor state changes preserve content and routing", () => {
  const original = c.assoc(store, t.content, read_schedule_document(content()));
  const legacyStore = map(t.states, field(original, t.states), t.router, map(t.name, field(field(original, t.router), t.name)), t.content, content(), t.messages, field(original, t.messages));
  assert.ok(c._$e_(updater(store, decode_op(c._$o__$o_(t["hydrate-storage"], legacyStore)), "fixture", 0), original));
  const hydrate = (states) => updater(store,
    decode_op(c._$o__$o_(t["hydrate-storage"], c.assoc(legacyStore, t.states, states))), "fixture", 0);
  const restored = hydrate(map(t.cursor, null, t.editor, map(t.data, null)));
  assert.equal(typeof handler(comp_container(restored), t.input), "function");
  assert.throws(() => hydrate(map(t.editor, map(t.data, c._SHA__$M_()))));
  assert.throws(() => decode_op(c._$o__$o_(t.router, map(t.name, "not a route tag"))));
  const draftOp = (text) => c._$o__$o_(t.states, c._$L_(t.editor), map(t.text, text));
  assert.throws(() => decode_op(draftOp(123)));
  const next = updater(original, decode_op(draftOp("draft")), "fixture", 0);
  assert.ok(c._$e_(field(next, t.content), field(original, t.content)));
  assert.ok(c._$e_(field(next, t.router), field(original, t.router)));
  assert.equal(field(field(field(field(next, t.states), t.editor), t.data), t.text), "draft");
});

test("upload bridge checks the Promise and preserves raw content and rejection", async () => {
  const originalAdapter = axios.defaults.adapter;
  const raw = c.assoc(content(), c.init_tags(["export-metadata"])["export-metadata"], "原始存档 031 🐈");
  const calls = [];
  try {
    // Capture before Axios selects any network transport; no real request is sent.
    axios.defaults.adapter = async config => {
      calls.push(config);
      return { data: {}, status: 200, statusText: "OK", headers: {}, config };
    };
    const document = read_schedule_document(raw);
    const pending = begin_upload(document);
    assert.equal(typeof pending.then, "function");
    assert.equal(typeof pending.catch, "function");
    await pending;
    assert.equal(calls.length, 1);
    assert.equal(calls[0].method, "post");
    assert.equal(calls[0].url, "https://data-backs.chenyong.life/data/pudica-schedule-viewer");
    const payload = JSON.parse(calls[0].data);
    assert.equal(payload["export-metadata"], "原始存档 031 🐈");
    assert.equal(payload.tasks.active.text, "active fixture");
    assert.equal(payload.archives.archived.text, "archived fixture");
    const failure = new Error("synthetic upload rejection");
    axios.defaults.adapter = async () => { throw failure; };
    await assert.rejects(upload_schedule_$x_(document), error => error === failure);
  } finally {
    axios.defaults.adapter = originalAdapter;
  }
});
