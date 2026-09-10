import assert from "node:assert/strict"
import { readFile, writeFile } from "node:fs/promises"

const generatedModule = new URL("../js-out/respo.util.dom.mjs", import.meta.url)
const dynamicDispatch =
  '$clt.invoke_method("get-context",$js_ffi_DOT_browser.create_element("canvas"),"2d")'
const directCanvasCall =
  '$js_ffi_DOT_browser.create_element("canvas")["getContext"]("2d")'

const source = await readFile(generatedModule, "utf8")

if (source.includes(directCanvasCall)) {
  process.exit(0)
}

assert.ok(
  source.includes(dynamicDispatch),
  "Expected Respo canvas dynamic dispatch was not found; remove or update this compatibility shim.",
)

await writeFile(generatedModule, source.replace(dynamicDispatch, directCanvasCall))
