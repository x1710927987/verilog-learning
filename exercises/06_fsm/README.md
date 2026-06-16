# 06 - Finite State Machines (FSM)

有限状态机的 Verilog 实现。

## 待实现

| 模块 | 描述 | 状态 |
|------|------|------|
| Moore FSM (sequence detector) | Moore 型序列检测器 "101" | ⬜ |
| Mealy FSM (sequence detector) | Mealy 型序列检测器 "101" | ⬜ |
| vending machine | 自动售货机控制器 | ⬜ |
| elevator controller | 简易电梯控制器 | ⬜ |

## 知识点

- **Moore FSM**：输出仅由当前状态决定
- **Mealy FSM**：输出由当前状态和输入决定
- FSM 三段式写法：
  1. 状态寄存器（时序逻辑）
  2. 次态逻辑（组合逻辑）
  3. 输出逻辑（组合逻辑，Moore）或（组合逻辑 + 输入，Mealy）
- 状态编码：二进制、格雷码、One-hot
