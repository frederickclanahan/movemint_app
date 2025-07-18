
# 🛠️ MoveMint Developer Notes

## Overview
This document provides insights and rationale behind the current refactored MoveMint app structure as of July 18, 2025.

---

## 🧱 Architecture Notes
- **Stateless Widgets**: Used wherever possible to keep rendering light and predictable.
- **Stateful Widget (`MoveMintApp`)**: Used solely to manage theme toggling.
- **SharedPreferences**: Used to persist dark/light mode selection across sessions.
- **Semantic Widgets**: Integrated for screen reader compatibility.

---

## 📦 File Organization

```
lib/
├── main.dart                  # App entry with theme logic
├── themes.dart                # Centralized theme and constants
└── screens/
    ├── splash_screen.dart     # Animated splash with accessibility
    ├── dashboard.dart         # Responsive grid, personalized greeting
    └── shift_summary.dart     # Summary metrics and PDF export
```

---

## 🧠 Theming Strategy
- `themes.dart` includes:
  - `MoveMintDarkTheme` (active)
  - `MoveMintLightTheme` (placeholder)
  - Color and spacing constants for reuse

---

## 📤 PDF Export Strategy
- Utilizes `pdf` and `printing` packages.
- Outputs formatted summary report with branding and spacing.
- Easily extendable to include logos and other visuals later.

---

## ⏭️ Considerations for Next Phase
- Extract `DashboardTile` and `SummaryRow` to reusable components under `widgets/`
- Introduce state management (e.g., Riverpod or Provider)
- Implement real-time data source integration
- Add navigation logic for each dashboard action
