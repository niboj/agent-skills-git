---
name: skill-rediger-instructions
description: Utiliser ce skill quand il faut ecrire ou reecrire un corps `SKILL.md` de haute qualite a partir d un concept de skill defini, avec procedures concretes, comportements par defaut, validation et divulgation progressive vers des references ou des scripts. Ne pas l utiliser pour decider du perimetre global de la skill ni pour optimiser uniquement le champ `description`. Keywords: write SKILL.md, procedural instructions, validation loop, progressive disclosure.
---

# Skill: redaction des instructions de skill

## But

Ecrire un corps `SKILL.md` pret pour la production, procedural, reutilisable et calibre sur une tache reelle.

## Quand utiliser

- Quand le concept de skill existe deja et qu il faut un `SKILL.md` complet.
- Quand un `SKILL.md` existant est trop vague, trop large ou trop generique.
- Quand il faut ajouter des boucles de validation, des check-lists ou de la divulgation progressive.

## Ne pas utiliser

- Ne pas utiliser ce skill comme premiere etape si le perimetre reste flou.
- Ne pas l utiliser pour des reecritures limitees a la description.

## Entrees

- Un concept de skill cadre
- Les conventions existantes du depot
- `references/motifs-instructions.md`

## Procedure

1. Lire `references/motifs-instructions.md`.
2. Confirmer l artefact cible, le chemin par defaut et les etapes sensibles a l echec.
3. Rediger un corps court autour de : But, Quand utiliser, Entrees, Procedure, Validation, Sortie.
4. Ajouter une check-list seulement si le workflow contient plusieurs etapes dependantes.
5. Ajouter une boucle de validation si une sortie incorrecte serait couteuse ou facile a manquer.
6. Deplacer les exemples detailles, schemas ou tableaux de cas limites dans `references/`, `assets/` ou `scripts/`.
7. Garder le corps assez leger pour etre charge confortablement comme contexte declenche.

## Validation

- Chaque etape change utilement le comportement de l agent.
- Le chemin par defaut est evident.
- Les branches optionnelles sont limitees et explicites.
- La skill ne duplique pas un contenu de reference volumineux.

## Sortie

- Un corps `SKILL.md` complet, pret pour le frontmatter et l empaquetage.
