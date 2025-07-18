Smart Assistant Logic Blueprint

Purpose

This document outlines the core decision-making engine for the MoveMint Smart Assistant. It defines what insights we deliver to drivers, how we deliver them, and what data powers those recommendations.

This assistant is the heart of the app. It’s what makes MoveMint smart.

⸻

🧠 Smart Assistant Goals (Phase 1)
	•	Predict and recommend high-potential zones to drive in
	•	Warn drivers when they’re likely in a low-earning area
	•	Suggest break times, shift lengths, and hotspot return windows
	•	Learn from past driver patterns to personalize suggestions
	•	Keep drivers safe, rested, and making the most money per minute

⸻

⚙️ Inputs (Phase 1)

The assistant ingests the following data:
	•	Driver location (real-time GPS)
	•	Time of day + day of week
	•	Historical earnings data (from delivery logs)
	•	Traffic conditions (light, moderate, heavy)
	•	Weather conditions (rain, snow, heat, etc.)
	•	Local restaurant density (including closed/open status)
	•	Peak zones from platform incentives (if available)

⸻

🚦Trigger Events

Smart Assistant runs when:
	•	Driver starts or ends a shift
	•	Driver is idling in a poor earnings zone
	•	Driver enters a new neighborhood
	•	Platform incentives change
	•	Break reminder thresholds are hit

⸻

🗺️ Example Scenarios

1. Totem Lake (Weekday Morning)

“Based on your past earnings, Totem Lake is usually hot from 7:30–9:15 AM. Head to Starbucks cluster near NE 124th and stay parked — avoid Bel-Red this morning, it’s been slow.”

2. Covington (Rainy Day, 1:15 PM)

“Rain has picked up and traffic is heavy. No current bonuses. Based on past patterns, activity is low here after 1 PM. Consider ending your shift or pivoting to Four Corners.”

3. After 2 Hours Online

“You’ve been driving for 2h15m — your average productivity drops after this mark. Time for a rest?”

⸻

🧱 Output Types
	•	Push notifications (lightweight nudges)
	•	In-app assistant panel (persistent tips + warnings)
	•	Shift summary insights (post-shift reflection)

⸻

🛠️ Phase 2+ Enhancements
	•	AI-powered routing suggestions
	•	Learning from broader driver community trends
	•	Deep earnings analytics and forecasting
	•	Fully conversational assistant
	•	Driver-configurable assistant personality (chill vs tactical)

⸻

✨ Brand Voice & Tone

Even when delivering technical suggestions, Smart Assistant must feel:
	•	Empowering
	•	Respectful (never nagging or bossy)
	•	Clear, confident, and precise

⸻

📁 File Location

docs/smart_assistant_blueprint.md

⸻

Let’s make this our crown jewel. A driver-first assistant that actually helps, not just another feature that gets ignored.
