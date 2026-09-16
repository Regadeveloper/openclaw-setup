# Project Definition Wizard

Define interactivamente los parámetros, milestones y roadmap de un proyecto grande. Genera un Markdown que sirva como documento de referencia para todo el desarrollo hasta v1.0.

## Qué hace

- Hace preguntas interactivas sobre objetivo, timeline, presupuesto, tecnologías y metodología
- Identifica milestones principales hacia v1.0
- Define claramente qué entra en v1.0 y qué se deja para futuro
- Genera un documento Markdown estructurado con toda la información
- Proporciona un roadmap de desarrollo mínimo

## Cómo usarla

```
Define un proyecto nuevo: objetivo, timeline, coste, tecnologías, metodología.
Genera un documento Markdown con milestones, v1.0 y opciones futuras.
```

## Pasos

1. **Recopilar parámetros fundamentales:** Pregunta al usuario de forma interactiva:
   - ¿Cuál es el objetivo principal del proyecto?
   - ¿Cuánto tiempo esperado (semanas/meses)?
   - ¿Presupuesto estimado?
   - ¿Qué stack tecnológico se usará?
   - ¿Qué metodología? (Agile 2 semanas, Waterfall, etc.)
   - ¿Quién es el usuario final/mercado?

2. **Identificar milestones:** Con los parámetros recopilados, sugiere 3-5 milestones principales que lleven hasta v1.0. Pregunta al usuario si agrega, quita o reordena.

3. **Definir v1.0:** Pregunta específicamente qué funcionalidades son MVP en v1.0 y qué se deja para versiones futuras.

4. **Generar documento:** Crea un Markdown con estructura:
   ```
   # [Nombre del Proyecto]
   
   ## Resumen Ejecutivo
   [Objetivo en 2-3 líneas]
   
   ## Parámetros del Proyecto
   - Objetivo: ...
   - Timeline: ...
   - Presupuesto: ...
   - Stack: ...
   - Metodología: ...
   - Usuario Final: ...
   
   ## Milestones
   1. [Milestone 1]: [Descripción breve]
   2. [Milestone 2]: ...
   
   ## Versión 1.0
   ### MVP (Lo que ENTRA en v1.0)
   - Feature 1
   - Feature 2
   
   ### Features Futuras (Después de v1.0)
   - Feature X
   - Feature Y
   
   ## Roadmap de Desarrollo
   [Secuencia mínima de trabajo para alcanzar v1.0]
   ```

5. **Validar con el usuario:** Muestra el documento final, pregunta si hace cambios o si está listo.

6. **Guardar output:** Entrega el Markdown como archivo descargable o imprimible.

## Verificación

- El documento incluye todos los parámetros recopilados
- Milestones tienen descripción clara
- v1.0 y features futuras están bien diferenciados
- El roadmap es coherente con el timeline
- El usuario confirma que el documento es útil como referencia

## Ejemplo: App de Entrenamientos

**Parámetros:**
- Objetivo: App para registrar entrenamientos personalizados
- Timeline: 12 semanas
- Presupuesto: $15k
- Stack: React + Node + PostgreSQL
- Metodología: Agile 2 semanas
- Usuario: Atletas / Coaches

**Milestones:**
1. Setup inicial + catálogo de ejercicios
2. Creación de rutinas y entrenamientos
3. Historial y estadísticas básicas

**v1.0 MVP:**
- Registrar entrenamientos en distintos días
- Seleccionar ejercicios de un catálogo
- Guardar pesos y repeticiones por ejercicio
- Ver historial básico

**Futuro:**
- Estadísticas avanzadas
- Planes de entrenamiento predefinidos
- Social features (compartir rutinas)
