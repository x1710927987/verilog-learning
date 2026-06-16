# 03 - Adders

加法器电路的 Verilog 实现，从半加器到 4 位行波进位加法器。

## 文件结构

```
03_adders/
├── rtl/
│   ├── half_adder.v                # 半加器
│   ├── full_adder.v                # 全加器（例化两个半加器）
│   └── ripple_carry_adder_4bit.v   # 4位行波进位加法器
├── tb/
│   ├── tb_half_adder.v
│   ├── tb_full_adder.v
│   └── tb_ripple_carry_adder_4bit.v
└── README.md
```

## 知识点

- 半加器：无进位输入，输出 sum 和 carry
- 全加器：有进位输入 cin，输出 sum 和 cout
- 行波进位加法器 (RCA)：级联全加器，进位逐位传递
- 层次化设计：模块例化 (`full_adder` 例化 `half_adder`)
- RCA 的关键路径 = N × 全加器延迟（N 为位宽）
