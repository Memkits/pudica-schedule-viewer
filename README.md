
Pudica Schedule Viewer
----

> Trying to visualize storage file of pudica-schedule

Site http://r.tiye.me/Memkits/pudica-schedule-viewer/

### 本轮方法写法迁移：使用者影响

在既有正式 0.30.1 依赖图上，将五处 `option:unwrap-or` 和一处 `option:some?`
改为同名方法，并将两处已确认的 `List<Task>` 计数改为 `.len`。
只修改八个调用头；时间缺失时的默认值、排序判断、周任务合计与 SSR 判定不变。
存档格式、原始上传内容、接口地址、依赖及 HUD 均不变，合法的泛型 `reduce` 保留。

受保护 Linux CI 在迁移前后运行原存储/Canvas 适配与六项业务测试，
迁移后完整 strict、全定义/公开定义检查、弃用零门禁与构建通过。
原归档样例不覆盖全部排序分支，开发环境和 SSR 分支也未做实际浏览器验收；
不据此宣称真实存档、上传服务或完整交互已验收。不新增验证脚本，不合并、部署或发版。

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

The project pairs stable Calcit/procs `0.30.1`, with formal
Respo 0.16.124, UI 0.8.0 and JS-FFI 0.2.5 modules. Legacy Pudica
storage maps and current Schedule Struct/Option exports are validated and converted to typed schedule/task structs;
the remaining `Dynamic` positions are limited to storage, Respo state, and
host boundaries:

Application state uses a nominal `Store` shared by the atom, updater and container.
Its `content` keeps the original parsed storage value for uploads; rendering still
validates it as `Schedule`/`Task`. Respo's heterogeneous state tree keeps its existing
interface, and legacy whole-store hydration is decoded into `Store` at the boundary.
Routes use `Router`, and the updater consumes the nominal `Op` enum. The Respo
dispatch boundary matches operation variants and decodes route/hydration fields;
raw content remains untouched. The unused Reel dependency has been removed.

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

正式 Respo、UI 与 js-ffi 标签替换旧 alpha；DOM 类型衔接复用 Respo 的 `narrow-element`。测试夹具按 Storage 接口和 Respo 的 ChildPair/RenderNode 更新，原业务断言保留。存档解码仍校验任务字段及时间值，旧 nil/数字与新 Option 均转换为规范 Option；不直接信任解析后的 Struct/Enum。上传函数明确声明 async，返回值用已有 `PromiseHost` 检查 then/catch 能力，不再强转为 `JsObject`；只等待完成，不据此证明响应 payload 类型。原始 content、接口地址和拒绝传播保持不变。DayJS 两处 callable 边界仍显式 unsafe，不宣称全部消除。

Use `caps --ci --strict` and `yarn install --immutable`. The canonical files are
`calcit.cirru` and `deps.cirru`; retired `compact.cirru` / `package.cirru`
snapshots are ignored and rejected by CI. Public upload verification uses
cos-upload-action's built-in verify settings, with no extra CDN checker. Original server
deployment paths and shared external resource URLs remain unchanged.

CI 使用精确正式 tag 的 Actions，COS action v1.2.0 内置生成 HTML 同域资源引用及公开字节/SHA-256 校验，不再重复 CDN 构建测试。规范格式、全定义/公开定义/完整 strict、弃用调用零门禁及工具链一致性检查保留；原五项业务测试、存储/Canvas 适配测试保留，并在同一测试文件增加一项 Promise 上传桥接回归，验证原始数据及错误传播。该测试在 Axios 选择网络传输前拦截 adapter，不发送真实请求。构建一次后直接运行，避免重复编译。job 15 分钟、上传 10 分钟限时，不改变串行队列及部署条件。

Map 查询显式处理 Option，旧 nil 时间和新 Option 在存档边界规范化。事件实际是 Map，检查具体输入字段；混合 key 的 Respo states 保留真实开放合同，不用伪强转或 Dynamic 数量证明类型安全。`llms/` 只保留当前 CLI 与项目边界入口，退役重复的旧语言/框架教程。

`yarn check` 使用当前严格 `--check-only`，不再调用已移除的 `dynamic-methods --max` 或重复诊断。`yarn dev` 仍编译一次再启动 Vite；实时编译另开终端运行 `calcit calcit.cirru js -w`，无需 concurrently。PR 上传按 PR/run/attempt 隔离，原生产/服务器路径及存储数据保持不变，不新增模块 hash 或机械降级 alpha。

### License

MIT
