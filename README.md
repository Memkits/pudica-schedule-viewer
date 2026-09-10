
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
yarn dev
```

Stored schedule data is read through the typed `js-ffi.browser/storage-get`
adapter. Its `Option<String>` result is unwrapped before Cirru EDN parsing. The
storage smoke test uses a new in-memory key and never reads, writes, or deletes
browser data.

### License

MIT
