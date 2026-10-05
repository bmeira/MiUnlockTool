<div align="center">

<a href="https://github.com/MiForge/MiUnlockTool/releases/latest">
  <img src="https://img.shields.io/badge/MiUnlockTool-%23FF6900?style=flat&logo=xiaomi&logoColor=white" alt="MiUnlockTool" width="200"/>
</a>

**Developed to retrieve [`encryptData(token)`](encryptData.md) for Xiaomi devices to unlock the bootloader.**

---

[![Version](https://img.shields.io/pypi/v/miunlock?label=Version&labelColor=black&color=brightgreen)](https://pypi.org/project/miunlock/)
[![Changelog](https://img.shields.io/badge/Changelog-blue?style=flat&logoColor=white)](CHANGELOG.md)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)

---

| | MiUnlockTool | Official MiFlashUnlock |
|---|---|---|
| Supported platforms | All | Windows only |
| Save login session | ✅ | ❌ |
| Verification methods | SMS / Email | SMS |
| dataCenterZone config | Automatic / Manual | Automatic |

</div>

---

## Installation

```sh
pip install miunlock
```

> See the **[Installation Guide](INSTALL.md)** for detailed instructions.

### Run temporarily with Nix

With Nix and a `<nixpkgs>` channel available, run the tool from the repository without installing it into your system Python:

```sh
nix-shell
miunlock
```

The shell provides MiUnlockTool and Android `fastboot`; type `exit` to leave it. Nix may keep downloaded dependencies in its store for reuse. USB device permissions may still need to be configured on your system. Bootloader unlocking can erase your data and reduce device security; read the [unlock guide](unlock_guide.md) before proceeding.

---

## Usage

```sh
miunlock
```

---

<div align="center">


❓ [FAQ & Troubleshooting](FAQ.md)


</div>