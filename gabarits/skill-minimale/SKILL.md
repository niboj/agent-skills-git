---
name: theme-sujet-action
description: Utiliser ce skill quand il faut un workflow cible pour une tache repetable qui beneficie d instructions explicites, de references locales ou de scripts deterministes.
---

# Skill: a remplacer

## But

Produire la sortie attendue pour une tache bien delimitee.

## Quand utiliser

- Quand la demande correspond a un workflow repetable.
- Quand l agent beneficie d etapes specifiques au domaine ou d une validation.

## Entrees

- La demande utilisateur
- Les references locales pertinentes, le cas echeant

## Procedure

1. Identifier la sortie attendue et les contraintes.
2. Lire seulement les references necessaires pour ce cas.
3. Executer d abord le workflow par defaut.
4. Valider la sortie avant de finaliser.

## Validation

- Le format de sortie correspond a la forme attendue.
- Les informations manquantes sont signalees explicitement.
- Le resultat est exploitable et sans remplissage inutile.
