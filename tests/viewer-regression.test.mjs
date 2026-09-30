import assert from "node:assert/strict";
import { test } from "node:test";
import dayjs from "dayjs";
import weekOfYear from "dayjs/plugin/weekOfYear.js";
import * as c from "../js-out/calcit.core.mjs";
import { decode_schedule, decode_task, store } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";
import { comp_editor } from "../js-out/app.comp.editor.mjs";
import { comp_viewer, comp_time, format_duration, get_done_time, format_dayjs } from "../js-out/app.comp.viewer.mjs";
import { make_string } from "../js-out/respo.render.html.mjs";
import { component_$q_, component_tree } from "../js-out/respo.util.detect.mjs";
dayjs.extend(weekOfYear);
const t = c.init_tags(["tasks", "archives", "id", "text", "created-time", "done-time", "archived-time", "content", "router", "name", "viewer", "states", "cursor", "data", "editor", "value", "event", "children", "input", "click"]);
const map = c._$n__$M_;
const field = (v, key) => c.option_$o_unwrap(c.get(v, key));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const task = (id, text, done = null) => map(t.id, id, t.text, text, t["created-time"], Date.UTC(2024, 0, 1, 12), t["done-time"], done, t["archived-time"], null);
const content = () => map(t.tasks, map("active", task("active", "active fixture")), t.archives, map("archived", task("archived", "archived fixture", Date.UTC(2024, 0, 3, 12))));
function handler(node, kind) {
  if (component_$q_(node)) return handler(c.option_$o_unwrap(component_tree(node)), kind);
  const event = c.get(node, t.event);
  if (c.option_$o_some_$q_(event)) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (c.option_$o_some_$q_(fn)) return c.option_$o_unwrap(fn);
  }
  const children = c.get(node, t.children);
  if (c.option_$o_some_$q_(children)) for (const pair of c.option_$o_unwrap(children).toArray()) {
    const found = handler(nth(pair, 1), kind);
    if (found) return found;
  }
}
test("decode validates all task fields and rejects malformed storage", () => {
  const decoded = decode_schedule(content());
  assert.match(c.format_cirru_edn(decoded), /Schedule/);
  for (const invalid of ["not a map", map(), map(t.tasks, map("bad", map(t.id, "bad")), t.archives, map())]) assert.throws(() => decode_schedule(invalid));
  assert.throws(() => decode_task(c.assoc(task("bad", "text"), t["done-time"], "not a timestamp")));
});
test("active and archived tasks render with year grouping", () => {
  const html = make_string(comp_viewer(content()));
  for (const text of ["active fixture", "archived fixture", "2024", "week"]) assert.ok(html.includes(text), text);
  assert.match(make_string(comp_viewer(map(t.tasks, map(), t.archives, map()))), /Tasks/);
});
test("optional times preserve placeholder and inclusive duration semantics", () => {
  assert.match(make_string(comp_time(field(decode_task(task("none", "fallback")), t["done-time"]))), /\?\?:\?\?/);
  const decoded = decode_task(task("done", "duration", Date.UTC(2024, 0, 3, 12)));
  assert.equal(format_duration(decoded), "3d");
  assert.equal(format_dayjs(get_done_time(decode_task(task("none", "fallback"))), "YYYY-MM-DD"), "2021-01-01");
});
test("editor input and submit dispatch Enum content and router updates", () => {
  const text = c.format_cirru_edn(content());
  const states = map(t.cursor, c._$L_(t.editor));
  let db = store;
  const dispatch = (...args) => {
    assert.equal(args.length, 1);
    db = updater(db, args[0], "fixture", 0);
  };
  const input = handler(comp_editor(states), t.input);
  assert.equal(typeof input, "function");
  input(map(t.value, text), dispatch);
  const updatedStates = c.assoc(field(field(db, t.states), t.editor), t.cursor, c._$L_(t.editor));
  const submit = handler(comp_editor(updatedStates), t.click);
  assert.equal(typeof submit, "function");
  submit(null, dispatch);
  assert.equal(field(field(db, t.router), t.name), t.viewer);
  assert.ok(c._$e_(field(db, t.content), content()));
});
test("nested editor state changes preserve content and routing", () => {
  const original = c.assoc(store, t.content, content());
  const next = updater(original, c._$o__$o_(c.init_tags(["states"]).states, c._$L_(t.editor), map(t.text, "draft")), "fixture", 0);
  assert.ok(c._$e_(field(next, t.content), field(original, t.content)));
  assert.ok(c._$e_(field(next, t.router), field(original, t.router)));
  assert.equal(field(field(field(field(next, t.states), t.editor), t.data), t.text), "draft");
});
