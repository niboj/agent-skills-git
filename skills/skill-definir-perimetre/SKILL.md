---
name: skill-definir-perimetre
description: Utiliser ce skill quand il faut transformer un besoin brut, une tache recurrente ou une demande de capacite vague en un concept de skill nettement borne avec conditions de declenchement, non-objectifs et frontieres avec les skills voisines. Ne pas l utiliser pour rediger le corps final de `SKILL.md` ni pour construire des fichiers d evaluation. Keywords: skill scope, bounded capability, non-goals, overlap, trigger conditions.
---

# Skill: cadrage du perimetre de skill

## But

Transformer une demande initiale en un concept de skill bien cadre, assez etroit pour se declencher avec precision et assez large pour meriter d etre empaquete.

## Quand utiliser

- Quand un utilisateur demande une nouvelle skill mais que le perimetre reste vague.
- Quand une tache recurrente doit etre separee en une seule unite de capacite coherente.
- Quand une idee existante risque de chevaucher des skills voisines.

## Ne pas utiliser

- Ne pas utiliser ce skill pour ecrire le `SKILL.md` final.
- Ne pas utiliser ce skill pour generer `evals/evals.json`.

## Entrees

- Le besoin brut, la demande, le workflow ou l artefact source
- Les skills existantes liees, s il y en a
- `references/cadre-perimetre.md`

## Procedure

1. Lire `references/cadre-perimetre.md`.
2. Extraire l intention utilisateur repetitive, la sortie cible et le chemin par defaut.
3. Definir la plus petite unite utile de capacite qui resout quand meme la tache reelle.
4. Identifier ce qui doit rester hors de la skill et consigner des non-objectifs explicites.
5. Comparer le concept aux skills adjacentes et signaler les chevauchements ou manques.
6. Produire une note de cadrage avec des candidats de nom, les signaux de declenchement, un resume du workflow, les frontieres et les ressources recommandees.

## Validation

- Le concept decrit une seule unite de travail coherente.
- La sortie par defaut est explicite.
- Les non-objectifs sont concrets, pas generiques.
- Les conditions de declenchement correspondent vraisemblablement a de vrais prompts.

## Sortie

- Une note de concept de skill prete a etre transmise a une skill de redaction.
