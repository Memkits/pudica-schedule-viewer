
Pudica Schedule Viewer
----

> Trying to visualize storage file of pudica-schedule

Site http://r.tiye.me/Memkits/pudica-schedule-viewer/

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

The project targets Calcit `0.14.7` with strict type checks. Legacy Pudica
storage maps are validated once and converted to typed schedule/task structs;
the remaining `Dynamic` positions are limited to storage, Respo state, and
host boundaries:

```bash
yarn check
yarn compile
yarn test:storage
yarn test:canvas
yarn dev
```

Stored schedule data is read through the typed `js-ffi.browser/storage-get`
adapter. Its `Option<String>` result is unwrapped before Cirru EDN parsing. The
storage smoke test uses a new in-memory key and never reads, writes, or deletes
browser data.

Calcit 0.14.7 currently emits a dynamic dispatch for Respo's typed Canvas
adapter. `yarn compile` applies a checked, generated-output-only compatibility
shim for that single call; `yarn test:canvas` verifies startup uses
`canvas.getContext("2d")`. Remove the shim when
[calcit-lang/calcit#960](https://github.com/calcit-lang/calcit/issues/960) is
fixed upstream.

### License

MIT
