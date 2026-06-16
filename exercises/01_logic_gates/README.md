# 01 - Logic Gates

基本逻辑门的 Verilog 实现与仿真。

## 文件结构

```
01_logic_gates/
├── rtl/
│   ├── and_gate.v      # 2-input AND gate
│   ├── or_gate.v       # 2-input OR gate
│   └── xor_gate.v      # 2-input XOR gate
├── tb/
│   ├── tb_and_gate.v   # AND gate testbench
│   ├── tb_or_gate.v    # OR gate testbench
│   └── tb_xor_gate.v   # XOR gate testbench
└── README.md
```

## 仿真

使用 Icarus Verilog：

```bash
cd tb
iverilog -o tb_and_gate tb_and_gate.v ../rtl/and_gate.v
vvp tb_and_gate
```

## 知识点

- 组合逻辑：输出仅由当前输入决定
- `assign` 连续赋值语句
- `wire` 类型用于组合逻辑连接
