import assert from "node:assert/strict"

let requestedContext = null

globalThis.document = {
  createElement(tagName) {
    assert.equal(tagName, "canvas")
    return {
      getContext(contextName) {
        requestedContext = contextName
        return { measureText: () => ({ width: 0 }) }
      },
    }
  },
}

await import("../js-out/respo.util.dom.mjs")

assert.equal(requestedContext, "2d")
console.log("canvas context startup passed")
