---
name: skill-depuis-artefact
description: Utiliser ce skill quand il faut deriver une skill reutilisable a partir d une conversation reelle, d un incident, d un document, d une note de workflow ou d un artefact de depot en extrayant le motif repetable, les corrections critiques, les conditions de declenchement et les ressources minimales reutilisables. Ne pas l utiliser pour du remue-meninges abstrait sans artefact source. Keywords: derive skill, source artifact, repeated workflow, extracted pattern.
---

# Skill: derivation de skill depuis un artefact

## But

Transformer un artefact reel en candidat de skill reutilisable, ancre dans une execution reelle.

## Quand utiliser

- Quand vous disposez d un vrai fil de discussion, ticket, incident, document ou runbook qui devrait devenir une skill.
- Quand un workflow a ete repete assez souvent pour justifier un empaquetage.
- Quand vous voulez une skill fondee sur des preuves plutot que sur un savoir de fond generique.

## Ne pas utiliser

- Ne pas utiliser ce skill lorsqu il n existe pas d artefact source concret a inspecter.

## Entrees

- L artefact source
- D eventuelles corrections ou commentaires de revue
- `references/methode-extraction.md`

## Procedure

1. Lire `references/methode-extraction.md`.
2. Extraire la tache repetitive, la sortie cible et les criteres de succes.
3. Consigner les corrections qui ont change le resultat de maniere significative.
4. Separer les etapes reutilisables du contexte ponctuel.
5. Proposer un concept de skill, une formulation probable de description et les references ou scripts necessaires.
6. Transmettre le resultat a une skill de cadrage ou de redaction si une skill complete est necessaire.

## Validation

- Le resultat est ancre dans l artefact source.
- Les details ponctuels sont filtres.
- Les corrections critiques sont preservees.
- La skill proposee est reutilisable au-dela du cas source exact.

## Sortie

- Une note de skill reutilisable issue d un travail reel.
