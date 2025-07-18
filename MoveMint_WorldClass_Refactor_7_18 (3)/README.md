
# MoveMint — World-Class Refactor (July 18, 2025)

Welcome to the **refactored, production-ready version** of the MoveMint app — an intelligent gig-driving companion built for speed, clarity, and financial empowerment. This version has been refined for **world-class quality** in UX, architecture, and code structure.

---

## 🚀 What’s New in This Refactor

### ✨ Theming & Branding
- All colors and padding values centralized in `themes.dart`
- Expanded `TextTheme` for consistent typography
- Light/Dark theme support with `SharedPreferences` persistence
- Brand color: `#00C48C` (MoveMint Green)

### 🧠 Architecture & UX
- Dynamic `ShiftSummary` accepts real shift data
- `Dashboard` includes personalized greeting and responsive layout
- All screens use `Theme.of(context)` and shared constants
- Responsive logo sizing and accessibility support in `SplashScreen`

### 📦 Files Refactored
- `main.dart`: theme persistence, localization-ready
- `themes.dart`: centralized styling, light/dark themes
- `splash_screen.dart`: responsive, animated, accessible
- `dashboard.dart`: welcome message, modular tiles, adaptive grid
- `shift_summary.dart`: dynamic data input, PDF export, modern UI

---

## 🧪 Future Roadmap
- Add state management (e.g., Riverpod or Provider)
- Integrate actual backend data for shift metrics
- Implement navigation logic for all `DashboardTile`s
- Add unit and widget tests

---

## 📁 Structure Overview

```
lib/
├── main.dart
├── themes.dart
├── screens/
│   ├── splash_screen.dart
│   ├── dashboard.dart
│   └── shift_summary.dart
```

---

## 🗂️ Archive Reference

This archive represents a locked, showcase-ready version:
- Filename: `MoveMint_WorldClass_Refactor_7_18.zip`
- Date: July 18, 2025
- Status: ✅ Internal milestone, investor-demo ready

---

## 👋 From the Founder

> This version reflects our values — clarity, trust, and empowerment for every driver.  
> Let this be the foundation that builds freedom.

— Frederick Clanahan  
Founder, MoveMint
