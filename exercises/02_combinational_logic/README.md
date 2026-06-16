# 02 - Combinational Logic

基本组合逻辑电路的 Verilog 实现。

## 文件结构

```
02_combinational_logic/
├── rtl/
│   ├── mux2_1.v      # 2-to-1 multiplexer
│   ├── decoder2_4.v  # 2-to-4 decoder
│   └── encoder4_2.v  # 4-to-2 priority encoder
├── tb/
│   ├── tb_mux2_1.v
│   ├── tb_decoder2_4.v
│   └── tb_encoder4_2.v
└── README.md
```

## 知识点

- 多路选择器 (MUX)：根据选择信号从多个输入中选一输出
- 译码器 (Decoder)：将 n 位输入解码为 2^n 位输出
- 编码器 (Encoder)：将多个输入编码为较少的输出位，优先级编码器处理多输入同时有效的情况
- `always @(*)` 组合逻辑块
- `case` / `casez` 语句
