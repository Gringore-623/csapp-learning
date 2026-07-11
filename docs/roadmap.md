# CS:APP 实验节奏与路线图

> 适用教材：Randal E. Bryant 与 David R. O’Hallaron，*Computer Systems: A Programmer’s Perspective, Third Global Edition*, 2016。  
> 本文件规定推荐的学习先后、阶段目标和进入/退出条件；通用实验方法、合规规则与 Definition of Done 以 `CSAPP_Lab_Workflow_and_AI_Guide.md` 为准。

## 1. 文件定位与优先级

本路线图不能替代具体实验的 handout，也不预设函数接口、题目、评分规则或测试命令。开始任何正式 Lab 前，必须读取教材、该版本 handout、starter code、README、Makefile 和测试脚本，再生成本次实验的即时计划。

发生不一致时采用以下优先级：

```text
课程或实验的有效规则 / 原始许可证
→ CSAPP_Lab_Workflow_and_AI_Guide.md
→ 当前实验即时计划
→ 本路线图中的默认建议
```

预计用时只用于安排节奏，不是截止期限。基础实验通常用 1 周，大型实验可扩展为 2 周或更多，但阶段顺序不变。

## 2. 总体路线

```text
S0 环境与工具
→ S1 Hello Build Chain
→ S2 Data Lab
→ S3 Machine-Level Programming Basics
→ S4 Bomb Lab
→ S5 Architecture Lab
→ S6 Cache Lab
→ S7 Exceptional Control Flow Mini-Projects
→ S8 Shell Lab
→ S9 Virtual Memory Mini-Projects
→ S10 Malloc Lab
→ S11 System I/O and Network Mini-Projects
→ S12 Proxy Lab
→ S13 综合整理与求职作品集
```

核心依赖关系：

- Data Lab 提供位模式、补码和整数运算基础；
- Machine-Level Basics 把 C、汇编、寄存器、控制流和栈连接起来；
- Bomb Lab 综合训练反汇编与 GDB，不应早于汇编基础；
- Architecture Lab 解释指令在处理器中如何执行；
- Cache Lab 建立 locality 和 memory hierarchy 的性能模型；
- Shell Lab 依赖进程、信号和并发控制基础；
- Malloc Lab 依赖指针、堆布局与虚拟内存；
- Proxy Lab 综合系统 I/O、网络、健壮性与并发。

## 3. 固定学习节奏

### 3.1 单次学习：2–3 小时

| 环节 | 建议时间 | 产出 |
| --- | ---: | --- |
| 回顾 | 15 min | 上次结论、未解决问题、本轮目标 |
| 定向阅读 | 30–45 min | 小节问题、页码和关键机制 |
| 最小实验 | 20–30 min | 单一机制的可运行证据 |
| 实现里程碑 | 45–75 min | 一个可独立测试的增量 |
| 测试与调试 | 20–30 min | 命令、输入、输出和根因 |
| 记录与 Git | 10–15 min | 笔记、日志和单一目的提交 |

同一个 bug 持续 45 分钟仍无新证据时，暂停扩写代码，回到执行模型，缩小输入并提出可证伪假设。

### 3.2 标准周：7 个学习日

| 日次 | 重点 | 最低产出 |
| --- | --- | --- |
| Day 1 | 定位、材料审计、阅读路线 | `00-overview.md`、`01-reading-guide.md` |
| Day 2 | 概念、环境、基线、最小实验 | `02-concepts.md`、`03-baseline.md` |
| Day 3 | M1：最小正确功能 | 可编译、可运行、基本测试 |
| Day 4 | M2：主要功能 | 新功能测试和关键日志 |
| Day 5 | 边界、错误处理、调试 | 边界矩阵、bug 根因记录 |
| Day 6 | 回归、性能/资源/安全分析 | 全量测试与测量证据 |
| Day 7 | 报告、口试、Git 整理 | `report.md`、中英文总结 |

大型 Lab 使用双周节奏：第一周完成模型、基线和主体正确性，第二周完成复杂功能、回归、性能和总结。不得用“第二周再补测试”作为第一周无测试的理由。

## 4. 分阶段安排

### S0：环境与工具准备（2–3 次）

目标：建立 Linux、GCC、GDB、Make 和 Git 的最小可用环境。

任务顺序：

1. 记录 OS、架构和工具版本；
2. 编译、运行并调试一个最小 C 程序；
3. 学会 `git status`、分支、精确暂存、提交和 push；
4. 建立 `.gitignore`，排除二进制、目标文件、core dump、密钥和受限材料。

退出条件：可以在干净目录中复现一次编译—运行—调试—提交循环。

### S1：Hello Build Chain（3–4 次）

目标：理解 `hello.c → hello.i → hello.s → hello.o → ELF executable`。

顺序：

1. 阅读 Chapter 1 的系统总览；
2. 分阶段运行 GCC；
3. 用 `file`、`size`、`nm`、`readelf`、`objdump` 检查产物；
4. 修改一个变量或函数，观察符号、汇编和最终二进制变化；
5. 写出编译与链接链路总结。

退出条件：能解释预处理、编译、汇编、链接分别输入什么、输出什么。

### S2：Data Lab（1 周；浮点部分可另加 2–3 次）

教材定位：Chapter 2；§2.1 pp. 69–94，§2.2 pp. 95–119，§2.3 pp. 120–143，§2.4 pp. 144–160（教材印刷页码）。

内部顺序：

1. bit pattern、十六进制和位运算；
2. logical/arithmetic shift；
3. two’s complement、`TMin`、`TMax`；
4. signed/unsigned conversion；
5. integer arithmetic、overflow 和 C undefined behavior；
6. 由易到难实现函数；
7. 建立边界测试矩阵；
8. 查看编译器生成的汇编；
9. 浮点函数出现时再精读 §2.4。

当前整数函数建议顺序：

```text
bit_xor → negate_int → is_tmax → is_ascii_digit → is_less_or_equal
```

退出条件：能解释补码、符号扩展、不同右移、类型转换和溢出；所有函数有正常、边界和反例测试；结论不依赖仅一次测试通过。

### S3：Machine-Level Programming Basics（1 周）

教材定位：Chapter 3 从 p. 199 开始；§3.2 从 p. 205、§3.4 从 p. 215、§3.6 从 p. 236、§3.7 从 p. 274、§3.8 从 p. 291 开始。

内部顺序：

1. x86-64 数据宽度与寄存器；
2. System V AMD64 参数与返回值；
3. `base + index × scale + displacement` 寻址；
4. 算术、逻辑、`cmp`、`test` 和 condition codes；
5. `if`、循环、`switch` 的控制流；
6. `call`、`ret`、stack frame 和递归；
7. 数组与指针；
8. 比较 `-O0`、`-Og`、`-O2` 的汇编；
9. 使用 GDB 查看指令、寄存器和内存。

进入 Bomb Lab 的门槛：能从简单反汇编恢复 C 级伪代码，能解释 `%rsp`、参数寄存器、返回值、条件跳转和数组寻址。

### S4：Bomb Lab（1–2 周）

教材定位：以 Chapter 3 为主；先复习 §§3.1–3.8，遇到结构体、越界或安全机制时再查 §§3.9–3.10（§3.10 从 p. 312 开始）。具体必读页码由 Bomb 版本确定。

执行顺序：

1. 确认 handout、课程规则和 Bomb 来源；
2. 使用 `file`、`readelf`、`nm`、`strings` 做非执行检查；
3. 用 `objdump` 建立函数与调用关系地图；
4. 在 GDB 中对 `main`、当前 phase 和 `explode_bomb` 设置断点；
5. 每次只分析一个 phase；
6. 识别输入解析方式和关键比较；
7. 将控制流还原为伪代码和约束；
8. 用寄存器、内存和单步执行验证假设；
9. 记录证据后再进入下一 phase；
10. 最后总结字符串、循环、switch、递归、查表、链表/树等模式。

单个 phase 的固定循环：

```text
输入格式 → 静态反汇编 → 伪代码 → 约束假设
→ GDB 验证 → 反例检查 → 脱敏记录
```

退出条件：每个结论均有指令或运行状态证据；能解释而非只给最终输入；公开仓库不包含 Bomb 输入串、受限二进制或可直接复用的完整答案。

### S5：Architecture Lab（2 周）

教材定位：Chapter 4。精确小节和页码由 Arch Lab handout 决定。

建议顺序：Y86-64 ISA → 顺序处理器 → datapath → control logic → pipeline registers → hazards → forwarding/stalling → branch handling → regression/performance。

退出条件：能沿 datapath 解释一条指令，区分 data/control hazard，并用测试证明控制逻辑修改正确。

### S6：Cache Lab（1–2 周）

教材定位：Chapter 6。精确页码由 handout 确定。

建议顺序：locality → cache 参数与地址分解 → hit/miss/eviction → trace parser → LRU simulator → 基线矩阵转置 → miss 测量 → blocking 与边界矩阵 → 回归。

退出条件：模拟器结果可复现；优化有测量对照；能从地址字段解释一次访问命中或未命中。

### S7：Exceptional Control Flow Mini-Projects（3–5 次）

教材定位：Chapter 8。

在 Shell Lab 前依次验证：`fork` 的地址空间语义、`execve` 替换进程映像、`waitpid` 回收、signal delivery、signal masking，以及一个最小竞态例子。

退出条件：能画出父子进程状态变化，并解释为什么 signal handler 与主控制流之间会发生竞态。

### S8：Shell Lab（2 周）

建议顺序：命令解析 → fork/exec → foreground wait → job table → signal forwarding → background jobs → stopped jobs → race-free critical sections → trace regression。

退出条件：正确处理前台、后台、停止、终止与回收；关键共享状态具有明确的 signal masking 设计；不存在已知 zombie 或主要竞态。

### S9：Virtual Memory Mini-Projects（3–5 次）

教材定位：Chapter 9。

顺序：virtual address fields → page table/TLB 概念 → `mmap`/进程映射观察 → heap layout → block metadata → fragmentation。

退出条件：能从虚拟地址到物理映射解释地址翻译，区分 internal/external fragmentation，并理解 allocator 为什么需要对齐与元数据。

### S10：Malloc Lab（2 周）

建议顺序：heap checker → implicit free list 最小正确版本 → splitting → coalescing → 边界块 → trace regression → explicit/segregated structure（若 handout 要求或性能需要）→ utilization/throughput 测量。

退出条件：heap checker 能发现结构破坏；无越界、重叠和丢失块；合并与分割覆盖边界；优化有利用率和吞吐量证据。

### S11：System I/O and Network Mini-Projects（1 周）

教材定位：Chapters 10–11，并按并发需求预读 Chapter 12。

顺序：Unix I/O → short count 与 robust I/O → socket lifecycle → DNS/address conversion → iterative echo server → 错误与资源清理 → 并发模型比较。

退出条件：能解释 descriptor 生命周期、partial read/write、client/server connection flow 和资源释放路径。

### S12：Proxy Lab（2 周）

建议顺序：最小迭代代理 → 请求行和 header 解析 → 转发与响应回传 → 错误处理 → 并发 → cache（若 handout 包含）→ eviction/synchronization → 压力与回归测试。

退出条件：合法请求正确转发；畸形输入安全失败；无明显 fd/thread 泄漏；并发共享状态有同步依据；性能和缓存结论有测量。

### S13：综合整理与求职作品集（1 周）

1. 在干净环境重跑关键构建和测试；
2. 为每个项目补全目标、架构、关键决策、测试、结果和限制；
3. 检查第三方来源、许可证、课程规则、密钥和个人信息；
4. 将受限或可直接提交的标准答案移至 private repository；
5. public repository 优先保留原创扩展、benchmark、工具和脱敏报告；
6. 为代表项目准备 60 秒和 5 分钟中英文讲解。

## 5. 当前执行位置

按照仓库现状：

- Hello Build Chain：已完成；
- Data Lab：已有实现，下一步应按 Guide 的 Definition of Done 做边界测试、复现记录和总结审计；
- Machine-Level Programming Basics：已有实现，下一步应确认是否达到 Bomb Lab 进入门槛；
- Bomb Lab：尚未开始，必须先取得并检查具体 handout/binary，再生成即时计划。

因此当前推荐动作不是直接跳入 Bomb Lab，而是：

```text
审计 Data Lab 完成度
→ 验收 Machine-Level Basics
→ 读取 Bomb Lab 材料
→ 生成该版本即时计划
→ 开始 Bomb Lab phase-by-phase 分析
```

## 6. 与 Guide 的一致性检查

未发现实质冲突。本路线图采用了 Guide 规定的：

- 单次 2–3 小时节奏；
- 标准 7 日周期及大型实验双周扩展；
- 先阅读、最小实验、分里程碑实现、验证、测量、总结的顺序；
- 每次只推进一个可测试里程碑；
- 开始 Lab 前读取实际材料并生成即时计划；
- Third Global Edition, 2016 的页码口径；
- 公开发布、版权许可和 academic integrity 边界。

唯一需要解释的表面差异是：Guide 规定“后续实验不在通用文件中硬编码”，而本文件列出了完整推荐路线。这里的路线仅表示学习依赖和默认节奏，不固定实际接口、题目、评分、测试命令或精确工期；任何具体 Lab 的即时计划仍以 Guide 的协议生成。因此两者不构成规则冲突。

## 7. 路线图维护规则

- 完成一个阶段后更新“当前执行位置”，不要篡改历史报告；
- handout 与路线图不同，以 handout 和 Guide 为准，并在即时计划中记录差异；
- 实际用时超过建议不等于失败，优先保证 Definition of Done；
- 不因追赶计划跳过基线、测试、调试记录或合规检查；
- 页码必须注明版本，其他版本不得直接套用本文件页码。
