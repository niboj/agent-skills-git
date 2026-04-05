---
name: skill-structurer-ressources
description: Utiliser ce skill quand il faut decider si une skill doit ajouter des references, scripts, assets ou fichiers d evaluation, et structurer ces repertoires pour que `SKILL.md` reste concis et facile a parcourir. Ne pas l utiliser pour ecrire les instructions centrales elles-memes. Keywords: references, scripts, assets, evals, progressive disclosure, folder layout.
---

# Skill: structure des ressources de skill

## But

Concevoir la structure des dossiers de support d une skill sans alourdir `SKILL.md`.

## Quand utiliser

- Quand une nouvelle skill a besoin de `references/`, `scripts/`, `assets/` ou `evals/`.
- Quand une skill existante est devenue trop volumineuse ou trop difficile a parcourir.
- Quand il faut sortir du detail hors de `SKILL.md`.

## Ne pas utiliser

- Ne pas utiliser ce skill pour cadrer la capacite elle-meme.
- Ne pas l utiliser pour revoir uniquement la qualite de formulation.

## Entrees

- Le concept de skill cible ou un brouillon de `SKILL.md`
- `references/tableau-decision-ressources.md`

## Procedure

1. Lire `references/tableau-decision-ressources.md`.
2. Classer chaque bloc de contenu comme instructions centrales, materiel de reference, logique executable, ressource de sortie ou donnees d evaluation.
3. Garder dans `SKILL.md` uniquement les instructions critiques pour l execution.
4. Placer le detail lourd dans `references/` et indiquer exactement quand le lire.
5. Placer la logique deterministe et repetable dans `scripts/`.
6. Placer les gabarits de sortie ou les ressources binaires dans `assets/`.
7. Ajouter `evals/` quand la skill doit etre testee en regression dans le temps.

## Validation

- `SKILL.md` reste lisible et compact.
- Chaque fichier supplementaire existe pour une raison claire.
- Les references sont a une etape de `SKILL.md`, sans imbrication profonde.
- Les scripts sont justifies par la repetabilite ou la fiabilite.

## Sortie

- Une structure de dossiers recommandee pour la skill avec la justification de chaque sous-repertoire.
