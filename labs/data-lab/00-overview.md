# Official Data Lab：实验定位与 M0 材料审计

> 教材：Randal E. Bryant 与 David R. O’Hallaron，*Computer Systems: A Programmer’s Perspective, Third Global Edition*, 2016。

## 1. 当前定位

仓库中现有的 `bits.c` 五个整数函数属于 Data Lab 的前置练习子集，用于验证位运算、补码和整数比较概念；它不等同于某一具体课程版本的完整官方 Data Lab。

按照项目路线，当前正式进入 **Official Data Lab**。本轮只推进 **M0：材料审计、实验建模与阅读定向**，不预设尚未取得的函数列表、运算符限制、评分规则或测试命令。

## 2. 实验目标

Data Lab 的核心不是记忆位运算技巧，而是建立以下可验证链路：

```text
C 整数/浮点表达式
  ↓
固定宽度位模式
  ↓
Boolean operations、shift、two's complement arithmetic
  ↓
边界值、溢出、类型转换与可移植性
  ↓
编译器生成的机器级操作
```

完成后应能解释：

1. 一个 C 整数值如何编码为固定宽度位模式；
2. logical shift 与 arithmetic shift 的差异；
3. two's complement 的 `TMin`、`TMax`、取负和加法性质；
4. signed/unsigned conversion 为什么会改变比较结果；
5. 如何在受限运算符条件下构造并证明一个表达式；
6. 如何用边界测试和参考实现证明正确性，而不是只依赖少量样例。

## 3. 输入、输出与约束

具体函数接口、允许运算符、常量范围、控制流限制、每题最大操作数和评分规则，必须以实际 handout、starter code、README、Makefile 与测试脚本为准。

在这些材料到位前，只采用以下通用约束：

- 不修改题目规定的函数签名；
- 不使用 handout 禁止的运算符、类型、控制流或库函数；
- 不依赖编译器扩展或未定义行为；
- 正确性优先于操作数优化；
- public repository 不上传受限 starter code、官方评分器或完整标准答案。

## 4. 当前材料审计

| 材料 | 状态 | 结论 |
| --- | --- | --- |
| CS:APP Third Global Edition, 2016 | 已有 | 可生成 Chapter 2 阅读路线 |
| 通用 Lab Workflow | 已有 | 使用分里程碑、证据驱动流程 |
| 项目路线图 | 已有 | Official Data Lab 是当前正式实验 |
| 现有 `labs/data-lab/` 前置子集 | 已有 | 可作为概念复习和测试基础 |
| 具体版本 handout | 缺少 | 暂不能确定正式题目和限制 |
| 对应 starter code | 缺少 | 暂不能建立权威基线 |
| 官方或课程测试脚本 | 缺少 | 暂不能声明正式通过 |
| 许可证/课程公开规则 | 待确认 | 受限文件不得进入 public repository |

## 5. 系统位置

Data Lab 位于“信息表示 → 机器级程序”之间：

```text
数学整数/实数
  ↓  有限位宽编码
C data types and operators
  ↓  compiler lowering
x86-64 integer/bit instructions
  ↓
ALU / datapath
```

它为后续 Machine-Level Programming、Bomb Lab、Processor Architecture 和安全性分析提供基础。

对 Embedded Systems / FPGA 的直接意义包括：寄存器位域、mask、sign extension、fixed-width arithmetic、overflow、protocol field packing，以及 RTL 中的组合逻辑表达式。

## 6. 里程碑

- **M0：材料审计与阅读路线**：确认版本、接口、规则和公开范围。
- **M1：整数基础题**：建立最小正确实现与逐函数测试。
- **M2：复杂整数题**：处理符号、溢出、比较和位级构造。
- **M3：浮点位模式题**：仅在 handout 包含时执行。
- **M4：边界、随机与差分测试**：与无约束参考实现对照。
- **M5：规则检查、报告与 Git 收尾**：记录证据和限制。

## 7. M0 完成条件

- [x] 明确当前正式实验为 Official Data Lab；
- [x] 区分现有前置子集与完整官方实验；
- [x] 给出教材章节和精确印刷页码；
- [x] 记录缺少的 handout、starter code、测试与许可信息；
- [ ] 取得并审计具体版本材料；
- [ ] 根据实际函数列表生成 M1 计划与权威基线命令。

## 8. 本轮不做的内容

- 不猜测某个课程学期的函数列表；
- 不提供完整标准答案；
- 不把当前自建测试称为官方测试；
- 不在缺少 handout 时声称已完成 Official Data Lab。
