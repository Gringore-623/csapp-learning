# Official Data Lab：教材定向阅读指南

> 版本口径：*Computer Systems: A Programmer’s Perspective, Third Global Edition*, 2016。  
> 以下均为**教材印刷页码**，不与其他版本页码混用。

## 1. 阅读策略

不要先通读 Chapter 2 再开始实验。采用以下循环：

```text
读一个必要小节
→ 写出位模式或边界例子
→ 用 C 小程序验证
→ 再处理对应函数
→ 遇到反例时返回教材
```

正式函数与限制尚待具体 handout 确认，因此本指南先覆盖所有 Data Lab 版本共同依赖的知识；材料到位后再把每个函数映射到具体小节。

## 2. 必读内容

### A. 位模式、Boolean operations 与 shift

| 小节 | 印刷页码 | 阅读目标 |
| --- | ---: | --- |
| §2.1 Information Storage | pp. 70–94 | 把内存对象视为有限字节序列和位模式 |
| §2.1.1 Hexadecimal Notation | pp. 72–75 | 熟练进行 binary/hex 转换 |
| §2.1.2 Data Sizes | pp. 75–78 | 理解 word size、固定宽度整数和 `sizeof` |
| §2.1.6 Introduction to Boolean Algebra | pp. 86–89 | 理解 `~`、`&`、`|`、`^` 的逐位语义 |
| §2.1.7 Bit-Level Operations in C | pp. 90–91 | 区分位运算与数学运算 |
| §2.1.8 Logical Operations in C | p. 92 | 区分 `!`/`&&`/`||` 与位运算 |
| §2.1.9 Shift Operations in C | pp. 93–94 | 区分 logical shift 与 arithmetic shift |

阅读后必须能回答：

1. 为什么一个 hexadecimal digit 恰好对应 4 bits？
2. `~0` 在固定宽度机器上表示什么位模式？
3. `!x` 为什么只产生 `0` 或 `1`？
4. 对负数执行右移时，哪些行为依赖语言标准或实现？
5. 如何用 mask 选择、清零、设置或翻转一组位？

### B. Unsigned 与 two's complement 表示

| 小节 | 印刷页码 | 阅读目标 |
| --- | ---: | --- |
| §2.2 Integer Representations | pp. 95–119 | 建立有限位宽整数的数学模型 |
| §2.2.2 Unsigned Encodings | pp. 98–99 | 理解无符号权重和取值范围 |
| §2.2.3 Two’s-Complement Encodings | pp. 100–105 | 理解符号位权重、`TMin` 和 `TMax` |
| §2.2.4 Conversions between Signed and Unsigned | pp. 106–109 | 理解位模式不变但解释改变 |
| §2.2.5 Signed versus Unsigned in C | pp. 110–111 | 识别隐式转换导致的比较陷阱 |
| §2.2.6 Expanding the Bit Representation | pp. 112–116 | 理解 zero extension 与 sign extension |
| §2.2.7 Truncating Numbers | pp. 117–118 | 理解截断与模运算 |
| §2.2.8 Advice on Signed versus Unsigned | p. 119 | 形成安全编码习惯 |

阅读后必须能回答：

1. 对 `w` 位整数，unsigned 与 two's complement 的范围分别是什么？
2. 为什么 `TMin` 没有可表示的正数相反数？
3. signed/unsigned cast 为什么通常不改变位模式？
4. 为什么混合有符号和无符号比较可能产生反直觉结果？
5. sign extension 为什么保持 two's complement 数值？

### C. Integer arithmetic、overflow 与常量运算

| 小节 | 印刷页码 | 阅读目标 |
| --- | ---: | --- |
| §2.3 Integer Arithmetic | pp. 120–143 | 理解有限位宽算术与数学整数的差异 |
| §2.3.1 Unsigned Addition | pp. 120–125 | 用模 `2^w` 理解无符号溢出 |
| §2.3.2 Two’s-Complement Addition | pp. 126–130 | 识别正溢出与负溢出 |
| §2.3.3 Two’s-Complement Negation | p. 131 | 理解 `~x + 1` 及 `TMin` 特例 |
| §§2.3.4–2.3.5 Multiplication | pp. 132–136 | 理解截断乘法 |
| §2.3.6 Multiplying by Constants | pp. 137–138 | 理解 shift/add 变换 |
| §2.3.7 Dividing by Powers of 2 | pp. 139–142 | 理解舍入方向与 bias |
| §2.3.8 Final Thoughts | p. 143 | 区分数学结论、机器结论和 C 语义 |

阅读后必须能回答：

1. 无符号加法为何等价于模 `2^w` 加法？
2. 如何只从操作数和结果的符号判断 two's complement addition overflow？
3. `-x` 与 `~x + 1` 在哪一个值上最容易引起误解？
4. signed overflow 在 C 语言层面与机器 wraparound 有什么区别？
5. 对负数除以 `2^k` 时，为什么可能需要 bias 才能向零舍入？

## 3. 条件必读：Floating Point

只有当实际 handout 包含 floating-point puzzles 时，再精读：

| 小节 | 印刷页码 | 阅读目标 |
| --- | ---: | --- |
| §2.4 Floating Point | pp. 144–160 | 建立 IEEE 754 位域模型 |
| §2.4.1 Fractional Binary Numbers | pp. 145–147 | 理解二进制小数 |
| §2.4.2 IEEE Floating-Point Representation | pp. 148–150 | 区分 sign、exponent、fraction |
| §2.4.3 Example Numbers | pp. 151–155 | 识别 normalized、denormalized、zero、infinity、NaN |
| §2.4.4 Rounding | pp. 156–157 | 理解 round-to-even |
| §2.4.5 Floating-Point Operations | pp. 158–159 | 理解有限精度运算性质 |
| §2.4.6 Floating Point in C | p. 160 | 联系 C 类型与位表示 |

必须能沿以下流程解释一个 32-bit float：

```text
raw 32-bit word
  ↓ split fields
sign | exponent | fraction
  ↓ classify
zero / denormalized / normalized / infinity / NaN
  ↓ decode or transform
new raw 32-bit word
```

## 4. 本轮最小阅读任务

在取得 handout 前，只完成以下内容：

1. §2.1.6–§2.1.9，pp. 86–94；
2. §2.2.3–§2.2.5，pp. 100–111；
3. §2.3.1–§2.3.3，pp. 120–131。

阅读时写出并手算以下位模式：

```text
0, 1, -1, TMin, TMax
0x30, 0x39
x, ~x, x + 1, ~x + 1
```

## 5. 进入 M1 前的口头检查

能够不看资料回答以下问题，才进入正式函数实现：

- `x ^ y` 的每一位如何得到？
- two's complement 的最高位为什么具有负权重？
- `TMax + 1` 的位模式是什么？
- 为什么 `x - y` 可能溢出，导致直接看结果符号的比较方法失效？
- arithmetic right shift 对负数补入什么？

## 6. 暂缓内容

- Chapter 2 中较长的数学推导可在第一次阅读时略读，但结论必须能用例子验证；
- endian 与字符串表示不是整数 puzzle 的核心，可在涉及 byte-level inspection 时回查；
- floating point 在确认 handout 包含相关题目之前不作为本轮必读。
