import assert from "node:assert/strict"

const storageKey = "pudica-schedule-viewer-test"
const storedSchedule = `{}
  :tasks $ {}
    |task-1 $ {}
      :id |task-1
      :text |Write-tests
      :created-time 1700000000000
      :done-time nil
      :archived-time 1700000001000
  :archives $ {}`

const entries = new Map([[storageKey, storedSchedule]])
const localStorage = {
  get length() { return entries.size },
  getItem(key) {
    return entries.get(key) ?? null
  },
  key(index) { return [...entries.keys()][index] ?? null },
  setItem(key, value) { entries.set(key, value) },
  removeItem(key) { entries.delete(key) },
  clear() { entries.clear() },
}

globalThis.window = { localStorage }
globalThis.localStorage = localStorage

const { storage_get } = await import("../js-out/js-ffi.browser.mjs")
const calcit = await import("../js-out/calcit.core.mjs")
const { decode_schedule } = await import("../js-out/app.schema.mjs")

const raw = calcit.option_$o_unwrap_or(storage_get(storageKey), "")
const parsed = calcit.parse_cirru_edn(raw)
const normalized = calcit.format_cirru_edn(parsed)
const schedule = decode_schedule(parsed)
const decoded = calcit.format_cirru_edn(schedule)
const tags = calcit.init_tags(["tasks", "archives"])
const get = (value, key) => calcit.option_$o_unwrap(calcit.get(value, key))
const task = get(get(schedule, tags.tasks), "task-1")
const reread = decode_schedule(schedule)
assert.strictEqual(get(get(reread, tags.tasks), "task-1"), task)
const malformed = calcit._$n__$M_(
  tags.tasks, calcit._$n__$M_(1, task),
  tags.archives, calcit._$n__$M_(),
)
assert.throws(() => decode_schedule(malformed), /Expected a string task key/)

assert.match(normalized, /:tasks/)
assert.match(normalized, /:archives/)
assert.match(decoded, /%\{} 'Schedule/)
assert.match(decoded, /%\{} 'Task/)
assert.match(decoded, /%:: 'Option 'none/)
assert.match(decoded, /%:: 'Option 'some 1700000001000/)
assert.equal(
  calcit.option_$o_unwrap_or(storage_get("missing-test-key"), "missing"),
  "missing",
)

console.log("storage read, parse, and strict legacy decoding passed")
