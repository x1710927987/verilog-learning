# 04 - Latches & Flip-Flops

锁存器与触发器的 Verilog 实现。

## 文件结构

```
04_latches_flipflops/
├── rtl/
│   ├── sr_latch.v      # SR latch (NOR-based)
│   ├── d_latch.v       # D latch (level-sensitive)
│   ├── d_flip_flop.v   # D flip-flop (edge-triggered)
│   └── jk_flip_flop.v  # JK flip-flop (edge-triggered)
├── tb/
│   ├── tb_sr_latch.v
│   ├── tb_d_latch.v
│   └── tb_d_flip_flop.v
└── README.md
```

## 知识点

- **Latch**：电平敏感，使能信号为高时输出跟随输入（透明）
- **Flip-Flop**：边沿触发，仅在时钟边沿采样输入
- 异步复位 (`negedge rst_n`)：复位不依赖时钟
- SR Latch 的 S=R=1 为非法状态
- JK Flip-Flop 的 11 输入实现 Toggle 功能
