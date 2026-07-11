# CS:APP Learning

本仓库记录我基于 *Computer Systems: A Programmer’s Perspective*（CS:APP）开展的系统学习与实验。目标不是只让代码通过测试，而是建立从 C 源程序到机器执行的完整、可验证的理解：

```text
C source → preprocessing / compilation / assembly / linking
         → ISA and machine code
         → processor, pipeline, cache and memory hierarchy
         → process, virtual memory and system calls
         → I/O, networking and concurrency
```

每个实验最终都应回答：功能做了什么、软件如何表达、硬件或操作系统如何支撑，以及它如何影响正确性、性能、安全性或资源开销。

## 教材与页码口径

- 教材：Randal E. Bryant, David R. O’Hallaron, *Computer Systems: A Programmer’s Perspective, Third Global Edition*, 2016。
- 本仓库默认使用该版本的**教材印刷页码**，不与 North American Edition 页码混用。
- 每个实验的阅读指南必须注明章节、小节、印刷页码；必要时同时注明 PDF 页码和版本差异。
- README 中的章节范围用于导航；开始具体实验前，应重新查阅教材和实验说明，生成精确阅读清单。

统一标注格式：

```text
Chapter 3, Sections 3.6–3.10, pp. 236–328
（CS:APP Third Global Edition, 2016；PDF 页码另行注明）
```

## 当前进度

| 模块 | 状态 | 主要内容 | 教材对应（Global Edition） |
| --- | --- | --- | --- |
| Hello Build Chain | 已完成 | GCC、Makefile、ELF、编译与链接阶段 | Ch. 1；Ch. 7 |
| Data Representation Lab | 已完成 | 位运算、补码、整数比较 | Ch. 2, §§2.1–2.4, pp. 69–160 |
| Machine-Level Programming Basics | 已完成 | x86-64、寻址、循环、编译器优化 | Ch. 3, §§3.1–3.6, pp. 199–273 |
| Bomb Lab | 计划中 | 汇编分析、控制流、栈帧、GDB | Ch. 3，精确页码待实验说明确认 |
| Architecture Lab | 计划中 | Y86-64、流水线、冒险与转发 | Ch. 4 |
| Cache Lab | 计划中 | Cache 映射、局部性、LRU、分块 | Ch. 6 |
| Shell Lab | 计划中 | 进程、信号、作业控制、竞态 | Ch. 8 |
| Malloc Lab | 计划中 | 堆块、空闲链表、合并、虚拟内存 | Ch. 9 |
| Proxy Lab | 计划中 | 系统 I/O、Socket、HTTP、并发 | Chs. 10–12 |

> “计划中”模块只标章节，不预先假定实验版本。精确页码必须在读取对应实验 handout 后确定。

## 仓库结构

```text
csapp-learning/
├── README.md
├── notes/                  # 跨实验的概念笔记
├── mini-projects/          # 为验证单一机制而设计的小实验
│   ├── hello-build-chain/
│   └── machine-level-basics/
├── labs/
│   └── data-lab/
├── reports/                # 阶段总结与综合报告
└── tools/                  # 可复用脚本与辅助工具
```

新实验建议采用统一结构：

```text
labs/<lab-name>/
├── 00-overview.md          # 目标、输入输出、约束和验收标准
├── 01-reading-guide.md     # 章节、小节、印刷页码和阅读问题
├── 02-concepts.md          # 术语、机制、流程和常见误区
├── 03-baseline.md          # 环境、原始构建结果和基线
├── src/                    # 实现代码
├── tests/                  # 自建测试与边界用例
├── logs/                   # 可复现的关键日志
└── README.md               # 构建、运行、结果、限制与总结
```

## 标准实验流程

1. **实验定位**：明确目标、输入输出、约束、评分指标及系统层次。
2. **教材定向阅读**：按实验说明确定必读/选读内容及准确页码。
3. **概念扫盲**：解释术语、执行流程、具体例子和常见误区。
4. **环境与基线**：记录 OS、架构、工具版本、编译参数与初始结果。
5. **最小验证实验**：用小程序单独验证关键机制。
6. **正式实现**：先做最小正确版本，再处理边界情况。
7. **测试与调试**：保留命令、输入、预期输出和关键证据。
8. **性能分析**：正确性建立后再测量和优化。
9. **总结复盘**：解释软件、ISA、硬件/OS 之间的因果链路。
10. **版本控制**：只提交可解释、可复现且允许公开的材料。

实现顺序固定为：

```text
理解问题 → 建立系统模型 → 设计最小实验 → 最小正确实现
         → 测试 → 调试 → 测量 → 优化 → 总结
```

## AI 协作规则

默认采用分级提示，避免在学习阶段直接替代独立分析：

| Level | 支持范围 |
| --- | --- |
| 0 | 澄清问题、输入输出和约束 |
| 1 | 指向相关章节、数据结构或系统机制 |
| 2 | 提供局部思路、伪代码或调试观察点 |
| 3 | 分析已有代码中的具体错误 |
| 4 | 仅在明确要求时提供完整参考实现 |

每次开始新实验时，应先读取教材与该实验说明，再生成当次计划；不能仅凭通用模板臆测页码、评分规则或实现约束。

## 已完成项目

### Hello Build Chain

位置：`mini-projects/hello-build-chain/`

观察 C 程序成为 ELF 可执行文件的过程：

```text
hello.c → hello.i → hello.s → hello.o → hello
```

```bash
cd mini-projects/hello-build-chain
make
./hello
make clean
```

主要工具：`gcc`、`make`、`objdump`、`readelf`、`nm`、`file`、`size`。

### Data Representation Lab

位置：`labs/data-lab/`

已实现：`bit_xor`、`is_tmax`、`negate_int`、`is_ascii_digit`、`is_less_or_equal`。

```bash
cd labs/data-lab
make
make test
nm bits.o
objdump -d -Mintel test_bits
```

教材对应：Chapter 2；Information Storage (§2.1, pp. 69–94)、Integer Representations (§2.2, pp. 95–119)、Integer Arithmetic (§2.3, pp. 120–143)、Floating Point (§2.4, pp. 144–160)，均为 Third Global Edition, 2016 的印刷页码。

### Machine-Level Programming Basics

位置：`mini-projects/machine-level-basics/`

内容包括 System V AMD64 calling convention、寄存器传参、数组寻址、循环翻译，以及 `-O0`、`-Og`、`-O2` 生成代码的比较。

```bash
cd mini-projects/machine-level-basics
make
make test
make assembly
make disassemble
```

教材对应：Chapter 3, §§3.1–3.6, pp. 199–273（Third Global Edition, 2016）。其中 Program Encodings 从 p. 205、Accessing Information 从 p. 215、Control 从 p. 236 开始。

## 构建、测试与复现

常用命令：

```bash
make
make test
make clean
```

常用编译参数：

```text
-std=c11 -Wall -Wextra -Wpedantic -Og -g
```

每个实验 README 至少记录：操作系统与架构、编译器版本、依赖工具、完整构建命令、测试输入、预期输出和已知限制。优化必须建立在可编译、功能正确、边界正确、无未定义行为和内存错误的基础上，并附测量证据。

## Git 工作流

```bash
git status
git switch -c <topic-branch>
git add <明确属于本次工作的文件>
git commit -m "docs: describe the completed work"
git push -u origin <topic-branch>
```

提交信息示例：

```text
feat: add data representation lab
fix: correct signed comparison edge case
test: add integer boundary cases
docs: document x86-64 indexed addressing
```

生成的二进制、目标文件、core dump 和 IDE 配置通常不应提交；用于分析的汇编或反汇编文件可在说明用途后保留。

## 学术诚信与公开范围

本仓库是基于 CS:APP 知识体系开展的个人学习作品集，**不是 Carnegie Mellon University、Pearson 或教材作者维护、认可或授权的官方仓库**。仓库名称以及对书名、章节和页码的引用仅用于说明学习主题与来源，不表示任何隶属、赞助或背书关系。

### 权利归属

- 本人独立编写的源代码、实验报告、测试、图表和说明，其版权归相应作者所有。
- 教材正文、插图、习题、配套网站材料、实验 handout、starter code、二进制、评分脚本及其他第三方材料，版权和许可仍归各自权利人所有。
- 仓库中的来源说明或免责声明不会改变第三方材料原有的版权和许可，也不能替代权利人的授权。
- 除非文件明确附有允许再分发的许可证，否则不得仅因材料可以下载、购买或用于自学，就推定其可以重新公开发布。

### 公开发布边界

本仓库用于个人学习和实验记录。不得公开上传：

- 课程或实验许可禁止再分发的 starter code 与评分资源；
- 标准实验的完整受限答案；
- Bomb Lab 输入串或等价解答；
- 教材 PDF、扫描页、完整插图、大段原文或大量习题复刻；
- instructor-only solutions、autograder、隐藏测试、课程账号获取的受限资料；
- 含密钥、令牌、个人信息或第三方版权限制的文件。

公开内容应优先包括独立编写的最小实验、非官方测试、分析过程、调试证据、性能测量和学习总结。引用教材时只引用为解释所必需的少量内容，并注明作者、书名、版本、章节和页码；能够转述时优先使用自己的语言。

对于仍被广泛用于教学或考核的标准实验：

- 完整可提交实现默认保存在 private repository；
- public repository 只展示设计思路、非关键代码片段、脱敏结果和独立扩展；
- 若课程规定比本说明更严格，以课程规定为准；
- 无法确认来源或许可时，暂不公开该文件。

### 提交前检查

每次 push 前确认：

- [ ] 新增文件由本人独立创作，或具有明确且兼容的公开许可证；
- [ ] 已保留第三方文件要求的版权声明、许可证和 attribution；
- [ ] 不包含教材 PDF、官方受限资源、完整标准答案或隐藏测试；
- [ ] 不包含 API key、token、个人数据、课程账号信息或他人的代码；
- [ ] 引用内容必要、适量并已标明来源；
- [ ] 无法确认公开权限的材料已移至 private repository 或从提交中排除。

### 权利人联系与处理

如权利人认为仓库中的具体文件侵犯其权利，请通过 GitHub 与仓库所有者联系，并提供相关文件路径、权利依据和处理请求。收到可信通知后，仓库所有者将及时检查，并在核实期间限制访问或移除相关内容。此条款是善意处理机制，不构成对侵权与否的预先承认。

> 本说明用于项目合规管理，不构成法律意见，也不主张适用任何法定例外。具体公开行为仍应遵守适用法律、原始许可证及所在课程或机构的规定。

## Author

Runcheng Zhang

M.Sc. student in Electrical Engineering and Information Technology at Karlsruhe Institute of Technology, focusing on embedded systems, systems engineering and hardware-software co-design.
