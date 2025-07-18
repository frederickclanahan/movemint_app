
# 📓 MoveMint Changelog

## [World-Class Refactor] - 2025-07-18

### ✨ Major Enhancements
- Introduced centralized theming in `themes.dart` with constants like `kMintGreen`, `kDarkBackground`, `kCardColor`
- Implemented `MoveMintDarkTheme` and placeholder `MoveMintLightTheme`
- Enabled persistent theme toggling via `SharedPreferences` in `main.dart`
- Added localization placeholders in `MaterialApp`

### 🎨 UI/UX Improvements
- Splash screen logo is now responsive and accessible via `Semantics`
- Dashboard updated with personalized greeting and responsive grid layout
- All screens refactored to remove hardcoded styles in favor of theme values
- Enhanced dashboard tiles with tap support, better theming, and semantic labels

### 📊 Data & Layout Enhancements
- Shift Summary screen now accepts dynamic data (earnings, miles, offers)
- Values formatted using `intl` currency/miles formatting
- Summary values styled in theme-aware cards with better visual hierarchy

### 📄 PDF Export
- Exported PDF now includes:
  - MoveMint header
  - Timestamp
  - Well-structured summary layout

### 📂 Project Structure
- Created clear file structure under `/screens` and `/themes`
- Improved reusability and naming consistency across all components

---

## Previous Versions

> No previous version changelogs tracked — this marks the first formal release milestone under world-class standards.
