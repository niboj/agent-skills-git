---
name: skill-exemple
description: Utiliser ce skill quand il faut transformer une demande vague en un bref Markdown concis avec objectif, entrees, hypotheses, livrable attendu et points de vigilance. Ne pas l utiliser pour la conception complete d un depot ou pour le travail de compatibilite plateforme. Keywords: working brief, scoped request, concise artifact, assumptions.
---

# Skill: produire un bref de travail concis

## But

Produire un court bref de travail Markdown a partir d une demande utilisateur incomplete.

## Quand utiliser

- Quand la demande initiale est large et doit etre rapidement cadree.
- Quand un besoin approximatif doit devenir un artefact de travail partageable.
- Quand un nouveau depot de skills a besoin d un exemple simple mais complet.

## Entrees

- Une demande utilisateur, meme incomplete.
- `references/contexte.md` comme fichier de convention locale.

## Procedure

1. Lire `references/contexte.md` et en extraire les sections requises.
2. Identifier le besoin central, les contraintes et les inconnues.
3. Produire un bref avec `Goal`, `Inputs`, `Assumptions`, `Expected deliverable` et `Watchpoints`.
4. Garder le resultat concis et exploitable.
5. Signaler ce qui manque avant que le travail puisse continuer.

## Validation

- Les cinq sections requises sont presentes.
- Les hypotheses sont separees des faits.
- Les inconnues sont visibles.
- Le texte reste actionnable et compact.

## Sortie

- Un court bref Markdown reutilisable directement dans un echange de travail.

## Cas limites

- Si la demande contient presque aucune information exploitable, produire un bref minimal et mettre l accent sur les inconnues.
