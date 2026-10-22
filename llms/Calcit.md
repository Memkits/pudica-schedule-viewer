# Calcit 项目操作入口

本项目固定正式 Calcit/procs 0.30.1；以 deps.cirru 和 package.json 为准。
不再复制历史 `cr` 参数、Tuple/Record 或旧类型断言教程，当前权威帮助由 CLI 提供：

```sh
calcit -v
calcit docs agents --contract
calcit query config
calcit query ns
calcit query defs app.schema --signatures
```

Snapshot 只能通过 `calcit query/tree/edit/config/fix` 读取与修改，不得文本 patch。
从 query/search 的实际路径进入 tree show，修改使用 edit transaction 的 dry-run，
随后把返回的 scoped_revision 传给同一事务的 --expect-revision。
低频命令先看对应 --help；新能力按需读取 `calcit docs agents --full`，不要复制旧参数。

完成前运行默认严格检查、完整 strict 和项目原测试；一次编译后复用生成文件：

```sh
calcit --check-only --all-defs
calcit fix --workflow strict --verify
yarn build
node tests/storage-read.mjs
node tests/canvas-context.mjs
node --test tests/*.test.mjs
```

只有 calcit.cirru/deps.cirru 是 canonical；js-out、dist、.calcit 均不提交。
不以 Dynamic 数量、规范格式或一次 build 代替真实数据/浏览器验收。
不要执行上传、合并或生产部署来替代本地验收；部署权限需单独确认。
