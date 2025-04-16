# Object-Detection-DSLR

A object detection camera system that uses an Arduino Mega, Canon EOS 90D, and Python to detect motion, capture photos, and recognize objects (hands, phones, keys) and faces. The system triggers an LED and optional buzzer upon detection, making it ideal for monitoring applications.

## Features
- Motion detection using a push-button (replacing an HC-SR501 PIR sensor).
- Photo capture with a Canon EOS 90D via Canon EOS Utility and AutoHotkey.
- Object detection (hands, phones, keys) using a fine-tuned MobileNetV2 model.
- Face detection using Haar Cascade.
- LED and buzzer activation upon detection.
- Automatic minimization of EOS Utility to keep the VS Code console visible.
- Consecutive photo capture with no delay.

## Hardware Requirements
- Arduino Mega
- Push-button (connected to Pin 3 and GND)
- LED (connected to Pin 2 and GND)
- Optional: Buzzer (connected to Pin 12 and GND)
- Canon EOS 90D camera
- USB cables for Arduino and camera

## Software Requirements
- **Arduino IDE**: To upload the sketch to the Arduino Mega.
- **Python 3.8+**: For running the main script.
- **AutoHotkey v2**: For triggering photo capture (`C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe`).
- **Canon EOS Utility**: For interfacing with the EOS 90D.
- **VS Code** (optional): For running the Python script.

### Python Dependencies
Install the required Python packages:
```bash
pip install -r requirements.txt
