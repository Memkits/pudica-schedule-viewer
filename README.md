
Pudica Schedule Viewer
----

> Trying to visualize storage file of pudica-schedule

Site http://r.tiye.me/Memkits/pudica-schedule-viewer/

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

The project currently targets Calcit `0.14.7` in compatibility mode while its
remaining dynamic boundaries are migrated incrementally:

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
