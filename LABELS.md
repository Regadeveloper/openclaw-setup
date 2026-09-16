# GitHub Labels System

Sistema de labels para el workflow Fast-Follow de desarrollo.

## Instalación Rápida

```bash
bash scripts/install-labels.sh
```

## Dimensiones Principales

### Priority: Qué importa
| Label | Meaning |
|-------|---------|
| P1 | Must ship first, blocks other work |
| P2 | Core features, ship after P1 |
| P3 | Polish and low-urgency items |
| P4 | Post-launch polish and enhancements |
| P5 | Nice to have, no pressure |

### Clarity: Qué tan definido está (CRÍTICO)
| Label | Meaning | Agent Action |
|-------|---------|--------------|
| clarity:1 | Vague idea — no spec | ❌ No pickear — needs human |
| clarity:2 | Problem defined, solution unclear | ❌ Needs design spike — human |
| clarity:3 | Direction known, details TBD | ⚠️ Can start with questions |
| clarity:4 | Clear spec, minor ambiguities | ✅ AI-shippable con light review |
| clarity:5 | Crystal clear, full definition of done | ✅ Just execute |

### Risk: Qué tan peligroso
| Label | Meaning |
|-------|---------|
| risk:1 | Isolated change, hard to break |
| risk:2 | Small surface area, existing patterns, minor regression chance |
| risk:3 | Touches shared code, some edge cases, needs careful testing |
| risk:4 | Cross-domain impact, state management, concurrency concerns |
| risk:5 | Data model migration, navigation architecture, seed data changes |

### Blast Radius: Qué tan lejos llega
| Label | Meaning |
|-------|---------|
| blast:1 | Single file — one view or one service |
| blast:2 | Single domain — 2-5 files within one feature folder |
| blast:3 | Cross-domain — touches shared code or 2+ feature domains |
| blast:4 | Architectural — services, navigation, data flow changes |
| blast:5 | Full-stack — data pipeline + iOS app, schema changes |

### Size: Cuánto esfuerzo
| Label | Meaning |
|-------|---------|
| size:XS | Trivial change, single file |
| size:S | Straightforward, few files |
| size:M | Moderate scope, some design needed |
| size:L | Significant feature, many files |
| size:XL | Epic-level, major cross-cutting work |

### Parallelism: Qué se puede hacer a la vez
| Label | Meaning |
|-------|---------|
| parallel:1-5 | Lane X: safe to parallelise with other lanes |
| serial | Cross-cutting — touches 2+ lanes, run alone |

### AI Delegation
| Label | Meaning |
|-------|---------|
| ai-shippable | Ready for full delegation (clarity:4+, risk:3-, DoD clear) |
| needs-design | Design work needed before implementation |
| needs-clarification | Waiting for clarity before starting |
| blocked | Blocked by other work or external dependency |

## Composición de Labels

La potencia está en la combinación:

### ✅ Ejemplo: Issue simple y listo
```
P2 size:S clarity:5 risk:1 blast:2 parallel:3 ai-shippable
```
→ Core feature, pequeño, cristal claro, sin riesgo, un dominio, paralelizable, listo para delegar.

### ❌ Ejemplo: Issue peligroso que necesita humano
```
P1 size:L clarity:2 risk:4 blast:4 needs-design serial
```
→ Crítico, peligroso, grande, necesita diseño, arquitectura, no puede paralelizarse.

## Condiciones para ai-shippable

Un issue puede marcarse `ai-shippable` solo si:

1. **clarity:4 o clarity:5** — spec clara
2. **risk:3 o inferior** — cambio contenido
3. **Definition of Done claro** en el issue
4. **Sin decisiones de diseño** pendientes
5. **Sin dependencies** bloqueantes

---

**Created:** 2026-09-16
**Base:** https://www.conor.fyi/writing/working-april-26
