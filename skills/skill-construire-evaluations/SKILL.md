---
name: skill-construire-evaluations
description: Utiliser ce skill quand il faut creer des cas d evaluation realistes et un fichier `evals.json` pour une skill, y compris des prompts qui doivent declencher, ne doivent pas declencher et des cas limites qui revelent des instructions faibles. Ne pas l utiliser pour reecrire la skill elle-meme. Keywords: evals.json, evaluation cases, activation tests, regression prompts, edge cases.
---

# Skill: creation d evaluations de skill

## But

Construire des evaluations realistes pour la qualite de declenchement et la qualite de sortie.

## Quand utiliser

- Quand une nouvelle skill a besoin d une couverture de regression.
- Quand une skill est en cours d affinage apres des faux positifs ou des sorties faibles.
- Quand il faut des cas de test realistes plutot que des verifications manuelles ad hoc.

## Ne pas utiliser

- Ne pas utiliser ce skill comme substitut au cadrage ou a la redaction.

## Entrees

- La skill cible
- Des exemples de prompts realistes, si disponibles
- `references/motifs-evaluations.md`

## Procedure

1. Lire `references/motifs-evaluations.md`.
2. Separer les cas de declenchement des cas de qualite de sortie.
3. Creer au minimum :
   - un cas nominal ;
   - un cas limite ;
   - un cas d entree incomplete ;
   - un prompt voisin qui ne doit pas declencher.
4. Ecrire chaque cas dans une langue utilisateur realiste.
5. Decrire le comportement attendu sous forme d assertions, pas de prose idealisee.
6. Enregistrer les cas dans `evals/evals.json`.

## Validation

- Les cas sont realistes et pas factices.
- Les cas negatifs sont des quasi-cas, pas des contre-exemples evidents.
- Le comportement attendu est observable.
- La suite couvre a la fois le declenchement et la qualite d execution.

## Sortie

- Un fichier `evals/evals.json` et, au besoin, des notes sur les trous de couverture.
