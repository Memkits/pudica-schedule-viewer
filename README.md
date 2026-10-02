
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
snapshots are ignored and rejected by CI. Public upload verification uses
cos-upload-action's built-in verify settings, with no extra CDN checker. Original server
deployment paths and shared external resource URLs remain unchanged.

CI 使用正式 COS action v1.2.0 内置生成 HTML 同域资源引用及公开字节/SHA-256 校验，删除重复 CDN 构建测试。规范格式、严格入口、九个业务 namespace 公开定义及工具链一致性检查保留；五项真实业务测试与原存储/Canvas 适配测试不变，构建一次后直接运行，避免重复编译。

`yarn check` 使用当前严格 `--check-only`，不再调用已移除的 `dynamic-methods --max` 或重复诊断。`yarn dev` 仍编译一次再启动 Vite；实时编译另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。PR 上传按 PR/run/attempt 隔离，原生产/服务器路径及存储数据保持不变，不新增模块 hash 或机械降级 alpha。

### License

MIT
