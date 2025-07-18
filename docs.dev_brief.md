# Developer Brief

## 🚀 Purpose
This brief exists to bring all developers into alignment with MoveMint’s first-class philosophy: speed, clarity, and code that delivers results for real drivers. You’re not just building features — you’re shaping the most empowering driver platform ever created.

---

## 🧠 What is MoveMint?
MoveMint is a premium smart assistant for independent drivers. It provides shift summaries, earnings insights, weather & traffic overlays, and a clean, Apple-inspired interface — all with zero fluff.

---

## 🧱 Project Structure

- `movemint_app/` – root folder for the Flutter project  
- `lib/` – core logic, screens, themes, widgets  
- `lib/themes.dart` – all design is controlled here. Use it. No hardcoded colors.  
- `lib/screens/` – screen-by-screen components  
- `assets/` – icons, illustrations, logo sets  

Keep your files clean. Group features. Minimize imports. Respect the user’s attention.

---

## 🎯 MVP Phase Goals

These are the targets for our first public-facing release:
- Shift logging screen (form-based, map-based, voice?)
- Daily & weekly earnings summaries
- Traffic/weather-aware dashboard
- Dynamic dashboard tiles (based on time of day / weather / user habits)
- Night/dark mode switch
- Fast, gorgeous UI with no dead ends

---

## 🔑 Development Guidelines

- Use `Theme.of(context)` and extend `themes.dart` if needed
- NEVER hardcode colors or font sizes — always refer to theme tokens
- Avoid tightly coupling UI and logic
- Follow naming consistency (`shiftSummary`, not `shift_Summary`)
- Use mock data until backend is live — modularize where possible

---

## 🗓️ Short-Term Dev Priorities
- Hook up working navigation (dashboard → shift summary → back)
- Replace static text with data models (even if mocked)
- Begin wiring up shift form with reusable components
- Get AppBar + bottom navigation polished
- Ensure responsiveness across screen sizes

---

## 🔮 Future Considerations (Post-MVP)
- Add feature toggles via Firebase Remote Config
- Integrate in-app feedback capture
- Explore PWA/web support
- Begin unit testing and CI pipeline

---

## 📣 Communication Philosophy
We value:
- Clear commit messages
- Asking early if something’s unclear
- Respect for the mission, codebase, and end-user (the driver)

MoveMint was created to empower, not exploit. Code like people’s time depends on it — because it does.
