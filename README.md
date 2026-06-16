# Verilog Learning

从零开始学习 Verilog 数字电路设计的练习仓库。

## 目录结构

```
verilog-learning/
├── README.md
├── .gitignore
├── exercises/                     # 分级练习
│   ├── 01_logic_gates/            # 基本逻辑门 (AND, OR, XOR)
│   ├── 02_combinational_logic/    # 组合逻辑 (MUX, Decoder, Encoder)
│   ├── 03_adders/                 # 加法器 (Half, Full, RCA)
│   ├── 04_latches_flipflops/      # 锁存器与触发器
│   ├── 05_counters_registers/     # 计数器与寄存器
│   ├── 06_fsm/                    # 有限状态机
│   └── 07_small_projects/         # 综合小项目
├── constraints/                   # 约束文件
│   └── basys3/
│       └── basys3_master.xdc      # Basys3 开发板约束
└── vivado/                        # Vivado 工程（见 verilog-learning.xpr）
```

## 进度

| #  | 章节                 | RTL | Testbench | 状态   |
| -- | -------------------- | --- | --------- | ------ |
| 01 | Logic Gates          | —  | —        | 待实现 |
| 02 | Combinational Logic  | —  | —        | 待实现 |
| 03 | Adders               | —  | —        | 待实现 |
| 04 | Latches & Flip-Flops | —  | —        | 待实现 |
| 05 | Counters & Registers | —  | —        | 待实现 |
| 06 | FSM                  | —  | —        | 待实现 |
| 07 | Small Projects       | —  | —        | 待实现 |

## 工具

- **仿真**: Icarus Verilog (`iverilog` + `vvp`) 或 Vivado XSim
- **综合/实现**: Vivado (Basys3 开发板)
- **波形查看**: GTKWave

## 快速开始

```bash
# 以 01_logic_gates 为例
cd exercises/01_logic_gates/tb
iverilog -o tb_and_gate tb_and_gate.v ../rtl/and_gate.v
vvp tb_and_gate
gtkwave tb_and_gate.vcd
```

## 参考

- [Verilog HDL Quick Reference Guide](https://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf)
- Basys3 开发板手册
