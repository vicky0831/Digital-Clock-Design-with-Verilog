# ⏰ Digital Clock in Verilog

## 📜 Project Overview
This project implements a fully functional **⏱️ digital clock** using 🔤 Verilog. The design includes 📦 modules to perform 1️⃣0️⃣0️⃣ binary-to-BCD conversion, count ⏳ seconds, ⏳ minutes, and ⏳ hours, generate precise time ⏰ delays, and display the 🕒 time on a 🔢 7-segment display. It is designed for 🖥️ simulation and can be synthesized for 🔲 FPGA implementation.

## 🌟 Features
- ✅ Accurate ⏳ timekeeping with ⏱️ seconds, ⏱️ minutes, and ⏱️ hours.
- ⚙️ Modular design for easy understanding and extensibility.
- 🔄 Binary-to-BCD conversion for 👀 human-readable output.
- 🔢 7-segment display for 🕒 time representation.
- 🔧 Configurable frequency input (⏲️ 50 MHz used as clock input).

## 🧩 Modules Description
### 1️⃣ **Binary to BCD Converter (`BINARY2BCD`)
🔄 Converts an 8️⃣-bit binary number to its 🔢 decimal representation in Binary-Coded Decimal (BCD) format for display purposes.

### 2️⃣ **1-Second Delay Generator (`DELAY_1SECOUND`)
⏳ Generates a 1️⃣ Hz clock signal from a ⏲️ 50 MHz input clock using a cascade of 🔁 frequency dividers.

### 3️⃣ **Hexadecimal to 7-Segment Decoder (`Hexadecimalto7Seg`)
🔄 Converts a 4️⃣-bit binary input to a 🔢 7-segment display format.

### 4️⃣ **Digital Clock (`DIGITAL_CLOCK`)
⏱️ Combines ⏳ second, ⏳ minute, and ⏳ hour counters to implement a complete digital clock.

### 5️⃣ **Demo Digital Clock (`DEMO_DIGITAL_CLOCK`)
🔄 Integrates all modules to create the final ⏱️ digital clock system with display output.

## 🛠️ Simulation and Testing
The system was tested using FPGA simulation tools (Quartus Prime Lite) and the DE10-Standard Terasic FPGA board to ensure accuracy and functionality. Each module underwent individual testing, followed by integration testing to validate the overall system performance.

## 🛠️ Applications
- 🔲 FPGA-based ⏰ digital clocks.
- 📚 Educational tools for learning 🔤 Verilog and 🛠️ digital design.
