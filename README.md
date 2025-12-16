# x86 Boot Sector Generator (Bare-Metal, BIOS)

This project is a **bare-metal x86 boot sector generator** written in JavaScript.  
It programmatically emits **raw machine code** to construct a valid **512-byte BIOS boot sector** that can execute directly on real hardware or emulators.

The generated image initializes CPU registers, sets up the stack, prints text using BIOS interrupts, and halts safely with a valid boot signature.

---

## ✨ Features

- Generates **raw x86 machine instructions**
- Produces a **bootable 512-byte BIOS image**
- Stack pointer initialization
- Register manipulation (AX, BX, CX, SP)
- Text output via **BIOS interrupt `INT 0x10`**
- Infinite halt loop for safe termination
- Correct **boot signature (`0xAA55`)**
- Runs on:
  - QEMU
  - Bochs
  - Legacy BIOS systems

---

## 🧠 How It Works

1. JavaScript is used as a **code generator**, not as a runtime environment.
2. Each instruction is emitted as raw opcode bytes.
3. The boot sector:
   - Sets up stack and registers
   - Prints a message using BIOS teletype service
   - Halts execution
4. Padding ensures the output is exactly **512 bytes**
5. The final two bytes contain the **BIOS magic number (`0xAA55`)**
