
Pudica Schedule Viewer
----

> Trying to visualize storage file of pudica-schedule

Site http://r.tiye.me/Memkits/pudica-schedule-viewer/

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

The project targets Calcit `0.27.0` with strict dependency and source checks. Legacy Pudica
storage maps are validated once and converted to typed schedule/task structs;
the remaining `Dynamic` positions are limited to storage, Respo state, and
host boundaries:

```bash
yarn check
yarn compile
yarn test:storage
yarn test:canvas
node --test tests/*.test.mjs
yarn dev
```

Stored schedule data is read through the typed `js-ffi.browser/storage-get`
adapter. Its `Option<String>` result is unwrapped before Cirru EDN parsing. The
storage smoke test uses a new in-memory key and never reads, writes, or deletes
browser data.

`yarn compile` directly generates JavaScript without editing generated output.
`yarn test:canvas` verifies startup calls `canvas.getContext("2d")`.

Use `caps --ci --strict` and `yarn install --immutable`. The canonical files are
`calcit.cirru` and `deps.cirru`; retired `compact.cirru` / `package.cirru`
snapshots are ignored and rejected by CI. CI checks generated frontend CDN paths;
public upload verification stays inside cos-upload-action. Original server
deployment paths and shared external resource URLs remain unchanged.

### License

MIT
