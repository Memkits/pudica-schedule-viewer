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

globalThis.localStorage = {
  getItem(key) {
    return key === storageKey ? storedSchedule : null
  },
}

const { storage_get } = await import("../js-out/js-ffi.browser.mjs")
const calcit = await import("../js-out/calcit.core.mjs")
const { decode_schedule } = await import("../js-out/app.schema.mjs")

const raw = calcit.option_$o_unwrap_or(storage_get(storageKey), "")
const parsed = calcit.parse_cirru_edn(raw)
const normalized = calcit.format_cirru_edn(parsed)
const decoded = calcit.format_cirru_edn(decode_schedule(parsed))

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
