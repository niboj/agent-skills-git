---
name: skill-reviser
description: Utiliser ce skill quand il faut revoir une skill existante pour reperer des problemes de cadrage, des descriptions faibles, des instructions vagues, une validation manquante, des fichiers inutiles ou des risques de portabilite, puis proposer des ameliorations concretes. Ne pas l utiliser comme skill principale de redaction. Keywords: review skill, findings, triggering issues, maintainability, portability.
---

# Skill: revue de skill

## But

Passer une skill en revue comme artefact d ingenierie et produire des ameliorations actionnables.

## Quand utiliser

- Quand un brouillon de skill est pret pour la revue.
- Quand une skill plus ancienne a besoin d etre modernisee.
- Quand une skill semble difficile a declencher, maintenir ou valider.

## Ne pas utiliser

- Ne pas utiliser ce skill lorsqu il n existe aucun artefact de skill a inspecter.

## Entrees

- Le dossier de skill
- Les skills voisines si un chevauchement est possible
- `references/controles-revue.md`

## Procedure

1. Lire `references/controles-revue.md`.
2. Verifier d abord les champs du frontmatter.
3. Passer en revue le perimetre, la qualite du declenchement, le chemin par defaut et la logique de validation.
4. Verifier si les references, scripts et assets sont justifies.
5. Identifier des defauts, risques et problemes de maintenabilite concrets.
6. Proposer les changements par ordre de severite.

## Validation

- Les constats sont precis et ancrés dans les fichiers.
- La revue distingue les problemes bloquants des ameliorations optionnelles.
- Les recommandations sont assez concretes pour etre implementees.

## Sortie

- Une revue concise avec constats, risques et prochaines modifications recommandees.
