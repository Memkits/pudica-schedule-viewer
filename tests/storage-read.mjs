import assert from "node:assert/strict"

const storageKey = "pudica-schedule-viewer-test"
const storedSchedule = "{} (:tasks $ {}) (:archives $ {})"

globalThis.localStorage = {
  getItem(key) {
    return key === storageKey ? storedSchedule : null
  },
}

const { storage_get } = await import("../js-out/js-ffi.browser.mjs")
const calcit = await import("../js-out/calcit.core.mjs")

const raw = calcit.option_$o_unwrap_or(storage_get(storageKey), "")
const parsed = calcit.parse_cirru_edn(raw)
const normalized = calcit.format_cirru_edn(parsed)

assert.match(normalized, /:tasks/)
assert.match(normalized, /:archives/)
assert.equal(
  calcit.option_$o_unwrap_or(storage_get("missing-test-key"), "missing"),
  "missing",
)

console.log("storage read and Cirru EDN parse passed")
