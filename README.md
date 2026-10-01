<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&height=190&color=0:05080D,45:0066FF,100:00D4FF&text=SzCore+Status&fontSize=42&fontColor=FFFFFF&animation=fadeIn&fontAlignY=38&desc=SzCore+Framework+%E2%80%A2+Character&descAlignY=60&descSize=16" width="100%" alt="SzCore Status" />
<img src="https://readme-typing-svg.demolab.com?font=Orbitron&weight=700&size=21&duration=2500&pause=850&color=00D4FF&center=true&vCenter=true&width=720&height=52&lines=Character;Modular+%E2%80%A2+Server-Authoritative+%E2%80%A2+Developer+First" alt="SzCore Status animated headline" />

<p><b>Player needs foundation for hunger, thirst and stress with server-side metadata persistence and activity-aware updates.</b></p>
<p>
<img src="https://img.shields.io/badge/SzCore-v1.4.0--rc1-8B5CF6?style=for-the-badge" alt="Version">
<img src="https://img.shields.io/badge/Type-Character-00D4FF?style=for-the-badge" alt="Type">
<img src="https://img.shields.io/badge/FiveM-Resource-F40552?style=for-the-badge&logo=fivem&logoColor=white" alt="FiveM">
<img src="https://img.shields.io/badge/Lua-5.4-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
</p>
<p>
<a href="https://github.com/Szilko121/szcore_status/stargazers"><img src="https://img.shields.io/github/stars/Szilko121/szcore_status?style=flat-square&logo=github&color=00D4FF" alt="Stars"></a>
<a href="https://github.com/Szilko121/szcore_status/issues"><img src="https://img.shields.io/github/issues/Szilko121/szcore_status?style=flat-square&logo=github&color=EF4444" alt="Issues"></a>
<img src="https://img.shields.io/github/last-commit/Szilko121/szcore_status?style=flat-square&logo=github&color=22C55E" alt="Last commit">
</p>
<p><a href="https://github.com/Szilko121/SzCore-Framework"><b>Framework</b></a> • <a href="https://github.com/Szilko121/SzCore-Framework/tree/main/docs"><b>Docs</b></a> • <a href="https://github.com/Szilko121/SzCore-Recipe"><b>Recipe</b></a> • <a href="https://github.com/Szilko121/szcore_status/issues"><b>Issues</b></a></p>
</div>

---

## 🚀 Overview

Player needs foundation for hunger, thirst and stress with server-side metadata persistence and activity-aware updates.

> Status values are stored in SzCore player metadata and bounded server-side.

## ✨ Highlights

| | Capability |
|---:|---|
| ⚡ | **Hunger state** |
| 🧩 | **Thirst state** |
| 🛡️ | **Stress state** |
| 💾 | **Activity-based decay** |
| 🎯 | **Starvation/dehydration damage** |
| 🔌 | **Stress camera feedback** |

## 📦 Installation

**Dependencies:** `szcore`

```bash
git clone https://github.com/Szilko121/szcore_status.git "resources/[szcore]/szcore_status"
```

```cfg
ensure szcore_status
```

For a full deployment use **[SzCore-Recipe](https://github.com/Szilko121/SzCore-Recipe)**.

## 🔌 API Highlights

`GetStatus` · `SetStatus` · `AddStatus` · `RemoveStatus`

## 🛡️ Engineering Principles

- Server authority for persistent or security-sensitive state.
- Explicit cross-resource APIs.
- Modular resource boundaries.
- Event-driven updates where practical.
- No fixed performance promise without a controlled benchmark.

## 🧩 Part of SzCore

<div align="center">
[![Framework](https://img.shields.io/badge/SzCore-Framework-00D4FF?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Framework)
[![Recipe](https://img.shields.io/badge/txAdmin-Recipe-2563EB?style=for-the-badge&logo=github)](https://github.com/Szilko121/SzCore-Recipe)

<br><br><sub>Built by <b>SzCode</b> for the FiveM community.</sub>
<img src="https://capsule-render.vercel.app/api?type=waving&height=90&section=footer&color=0:00D4FF,55:0066FF,100:05080D" width="100%" alt="SzCore footer" />
</div>
