# Project Definition Wizard

Interactively gather project parameters and generate a structured project definition document in Markdown format. Output includes objectives, timeline, budget, tech stack, milestones, v1.0 MVP scope, and future roadmap.

## Trigger

User requests to define a new large project setup: "Define a project", "Create a project plan", or "Set up a project".

## Steps

1. **Ask for core parameters** (one per interaction):
   - Project name and objective (what are you building?)
   - Expected timeline (weeks/months)
   - Estimated budget
   - Technology stack
   - Development methodology (Agile 2-week sprints, Waterfall, etc.)
   - Target user/market

2. **Identify milestones:** Suggest 3-5 key milestones leading to v1.0. Ask if user wants to adjust.

3. **Define v1.0 MVP:** Ask what features constitute v1.0 minimum viable product vs future releases.

4. **Generate markdown document** with structure:
   ```markdown
   # Project Name
   
   ## Executive Summary
   One-paragraph objective statement.
   
   ## Project Parameters
   - Objective: [what]
   - Timeline: [duration]
   - Budget: [cost]
   - Tech Stack: [technologies]
   - Methodology: [approach]
   - Target User: [audience]
   
   ## Milestones
   1. [Milestone]: [brief description]
   2. [Milestone]: [brief description]
   
   ## Version 1.0
   ### MVP Features
   - [feature]
   - [feature]
   
   ### Future Features
   - [feature]
   - [feature]
   
   ## Development Roadmap
   Minimal execution path to v1.0.
   ```

5. **Validate and deliver:** Show draft, ask for edits, finalize and output Markdown file.

## Example: Fitness Training App

**Input parameters:**
- Objective: Personal workout tracking app
- Timeline: 12 weeks
- Budget: $15k
- Stack: React + Node + PostgreSQL
- Methodology: Agile 2-week sprints
- Target User: Athletes / Coaches

**Result:**
- Milestones: Exercise catalog → Workout creation → History tracking
- v1.0: Record daily workouts with exercises, weights, reps from catalog
- Future: Analytics, preset plans, social sharing

## Verification

- All parameters captured and documented
- 3-5 clear milestones defined
- v1.0 scope explicitly separated from future features
- Roadmap is coherent with timeline
- Output is a complete, ready-to-use Markdown file
