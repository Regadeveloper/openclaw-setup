#!/bin/bash
# Install all labels for the Fast-Follow workflow

set -e

echo "🏷️  Installing GitHub labels..."

# Priority
gh label create "P1" --description "Must ship first, blocks other work" --color "ff0000" || true
gh label create "P2" --description "Core features, ship after P1" --color "ff6600" || true
gh label create "P3" --description "Polish and low-urgency items" --color "ffaa00" || true
gh label create "P4" --description "Post-launch polish and enhancements" --color "ffdd00" || true
gh label create "P5" --description "Nice to have, no pressure" --color "cccccc" || true

# Clarity (CRITICAL)
gh label create "clarity:1" --description "Vague idea — no spec, needs discussion" --color "990000" || true
gh label create "clarity:2" --description "Problem defined, solution unclear — needs spike" --color "cc3333" || true
gh label create "clarity:3" --description "Direction known, details TBD — can start with Q" --color "ff6666" || true
gh label create "clarity:4" --description "Clear spec, minor ambiguities — AI-shippable" --color "ffaa88" || true
gh label create "clarity:5" --description "Crystal clear, full definition of done — just exec" --color "00cc00" || true

# Risk
gh label create "risk:1" --description "Isolated change, hard to break" --color "00ff00" || true
gh label create "risk:2" --description "Small surface, existing patterns, minor regression" --color "88ff00" || true
gh label create "risk:3" --description "Touches shared code, edge cases, careful testing" --color "ffff00" || true
gh label create "risk:4" --description "Cross-domain, state management, concurrency" --color "ff8800" || true
gh label create "risk:5" --description "Data model migration, architecture, seed data" --color "ff0000" || true

# Blast Radius
gh label create "blast:1" --description "Single file — one view or service" --color "00ff88" || true
gh label create "blast:2" --description "Single domain — 2-5 files in one feature" --color "00ff44" || true
gh label create "blast:3" --description "Cross-domain — touches shared code" --color "88ff88" || true
gh label create "blast:4" --description "Architectural — services, navigation, data flow" --color "ff8844" || true
gh label create "blast:5" --description "Full-stack — iOS app + backend, schema changes" --color "ff0000" || true

# Size
gh label create "size:XS" --description "Trivial change, single file" --color "0088ff" || true
gh label create "size:S" --description "Straightforward, few files" --color "00aaff" || true
gh label create "size:M" --description "Moderate scope, some design" --color "00ccff" || true
gh label create "size:L" --description "Significant feature, many files" --color "0088cc" || true
gh label create "size:XL" --description "Epic-level, major cross-cutting work" --color "004488" || true

# Parallelism Lanes
gh label create "parallel:1" --description "Lane 1: safe to parallelise with 2,3,4,5" --color "9900ff" || true
gh label create "parallel:2" --description "Lane 2: safe to parallelise with 1,3,4,5" --color "bb00ff" || true
gh label create "parallel:3" --description "Lane 3: safe to parallelise with 1,2,4,5" --color "dd00ff" || true
gh label create "parallel:4" --description "Lane 4: safe to parallelise with 1,2,3,5" --color "ff00ff" || true
gh label create "parallel:5" --description "Lane 5: safe to parallelise with 1,2,3,4" --color "ff0088" || true
gh label create "serial" --description "Cross-cutting — touches 2+ lanes, run alone" --color "000000" || true

# AI Delegation
gh label create "ai-shippable" --description "Ready for full AI delegation: clarity:4+, risk:3-, DoD clear" --color "00ff00" || true
gh label create "needs-design" --description "Design work needed before implementation" --color "ff00ff" || true
gh label create "needs-clarification" --description "Waiting for clarity before starting" --color "ffff00" || true
gh label create "blocked" --description "Blocked by other work or external dependency" --color "888888" || true

# Sequence (Launch Planning)
for i in {01..10}; do
  gh label create "seq:$i" --description "Launch sequence $i" --color "4400ff" || true
done

echo "✅ Labels installed successfully!"
echo ""
echo "Next steps:"
echo "1. Check labels: https://github.com/Regadeveloper/openclaw-setup/labels"
echo "2. Create an issue using the templates: .github/ISSUE_TEMPLATE/"
echo "3. Tag with appropriate labels"
echo "4. Share with Claudio when ready"
