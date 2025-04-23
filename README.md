
# 🎨 FPGA RGB Image Enhancement with Brightness, Inversion & Thresholding

This project implements an **FPGA-based image enhancement system** using Verilog. It reads RGB image data stored in HEX format, and applies brightness adjustment, inversion, and thresholding operations. The enhanced output is suitable for visualization and further image processing.

---

## 📦 Repository Name

`fpga-rgb-image-enhancement`


## ✨ Features

- 🔆 Adjustable Brightness (Increase or Decrease via Parameters)
- 🎨 RGB Channel Inversion
- ⚙️ Thresholding for Edge Detection / Binarization
- 🧱 Modular Verilog Design for FPGA Implementation
- 🧪 Testbench for Functional Simulation in ModelSim

---

## 📁 Files Overview

| File               | Description                                                             |
|--------------------|-------------------------------------------------------------------------|
| `image_read.v`     | Main Verilog module that reads and enhances the image.                  |
| `tb_image_read.v`  | Testbench for simulating the image enhancement logic.                   |
| `R_channel.hex`, `G_channel.hex`, `B_channel.hex` | Input HEX files for each RGB channel.      |
| `image_loader.v`   | Helper module to load image files during simulation.                    |
| `README.md`        | This file – contains project documentation.                             |

---

## 🔧 Parameters

| Parameter | Description                    | Example         |
|----------:|-------------------------------|-----------------|
| `VALUE`   | Brightness adjustment value   | `8'd30`         |
| `SIGN`    | Direction: `1`=increase, `0`=decrease | `1` or `0` |

Adjust these in the `image_read.v` before compiling.

---

## ▶️ Simulation Guide (ModelSim)

```bash
vlog image_read.v tb_image_read.v image_loader.v
vsim -gui work.tb_image_read
```

Use the waveform viewer to observe enhanced RGB outputs.

---

## 📤 Output Signals

- `DATA_R0`, `DATA_G0`, `DATA_B0` – Enhanced RGB output (pixel 0)
- `DATA_R1`, `DATA_G1`, `DATA_B1` – Enhanced RGB output (pixel 1)
- `HSYNC`, `VSYNC` – Sync signals for video output
- `ctrl_done` – High when processing is complete

---

## 🧠 Author & Tools

- 👩‍💻 **Author**: Saloni Singhania  
- 🛠️ **Tools**: Quartus Prime, ModelSim, MATLAB (for image conversion to HEX)

---

## 📝 License

This project is released for **educational and research purposes**.
```



