# 本项目的 Respo 边界

先遵守 [Agents.md](../Agents.md)，语言操作参照 [Calcit.md](./Calcit.md)。
框架用法按固定正式模块查询，不再复制旧 Respo、Tuple 或 `cr` 示例：

```sh
calcit query ns app.comp.container
calcit query def app.schema/decode-schedule
calcit query schema respo.schema/EventHandler
calcit docs read type-slots.md --full --module respo.calcit
```

- 应用 Store、Router、Schedule、Task 使用真实 Struct，业务操作使用 nominal Op。
- DOM 事件是 event->edn 产生的 Map，不得伪造 RespoEvent Struct；在真实字段边界解码。
- Respo 子状态可以混合 key，保留正确 Map 合同；不要用 assert-type 把开放数据当已验证。
- Map 查询处理 Option；本项目旧 nil 时间和新 Option 时间在存档边界规范化，不能一律 unwrap。
- Store.content 保留原始存档供现有上传接口使用；Schedule/Task 是渲染投影，不能拿投影替换上传内容。
- 文本、归档分组、时间占位和 inclusive duration 以原测试及实际页面为准，不重写算法来迁就门禁。
- entry 的 dispatch-op 绑定不是框架全链路类型贯通证明；相关开放边界仍须独立检查。
- COS 仅针对前端资源，用 Action 自带 verify；上传业务数据或改后端协议不属于 COS 重构。
