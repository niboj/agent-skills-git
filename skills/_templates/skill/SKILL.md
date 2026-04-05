---
name: nom-du-skill
description: Utiliser ce skill quand il faut produire ou transformer un livrable precis dans votre domaine, a partir d une source, d un besoin ou d un artefact existant. Le skill aide a generer une sortie exploitable, verifiable et coherente avec les conventions du depot.
---

# Skill : nom lisible du skill

## But

Produire un resultat clair et reutilisable pour un cas d usage bien defini.

## Quand utiliser

- Quand l utilisateur demande un livrable recurrent qui suit une structure stable.
- Quand il faut normaliser un contenu a partir d une source brute ou partielle.
- Quand il faut guider l execution avec des controles qualite explicites.

## Entrees attendues

- Une demande utilisateur avec un objectif clair.
- Une source minimale ou un contexte suffisant pour produire la sortie attendue.
- Les references locales du dossier `references/` quand elles existent.

## Procedure

1. Lire les references locales pertinentes et relever les contraintes obligatoires.
2. Identifier la sortie attendue, le niveau de detail requis et les informations manquantes.
3. Rassembler les elements minimaux necessaires a la production du livrable.
4. Produire le contenu selon la structure cible du depot.
5. Signaler explicitement les hypotheses, limites et informations manquantes.

## Controles qualite

- La sortie respecte une structure stable et lisible.
- Les informations obligatoires sont presentes ou marquees comme inconnues.
- Les hypotheses sont explicites.
- Les references locales ont ete prises en compte quand elles existent.

## Sortie attendue

- Un livrable directement exploitable par l utilisateur.
- Un contenu suffisamment clair pour etre relu sans revenir a la source brute.

## Cas limites

- Si les informations minimales sont absentes, expliciter ce qui manque au lieu d inventer.
- Si plusieurs interpretations sont plausibles, signaler l ambiguite avant de finaliser.
