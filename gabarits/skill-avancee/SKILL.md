---
name: theme-sujet-action
description: Utiliser ce skill quand il faut produire un artefact coherent et de haute qualite dans un domaine avec des regles locales, des references reutilisables et une validation scriptable optionnelle.
---

# Skill: a remplacer

## But

Produire un resultat reutilisable pour une tache precise avec des comportements par defaut clairs et une validation.

## Quand utiliser

- Quand la tache beneficie d un workflow defini.
- Quand la qualite de sortie depend de conventions locales ou de references.
- Quand la validation doit avoir lieu avant la remise.

## Entrees

- La demande utilisateur
- Les artefacts sources requis
- Les fichiers pertinents sous `references/`, `assets/` ou `scripts/`

## Workflow

Progression :
- [ ] Identifier l artefact cible et les criteres minimaux de completion
- [ ] Charger uniquement les references pertinentes
- [ ] Produire une premiere version via le chemin par defaut
- [ ] Lancer la validation
- [ ] Corriger les problemes et relancer la validation si necessaire

## Procedure

1. Confirmer l artefact demande, le perimetre et les contraintes.
2. Lire les references qui affectent directement le workflow.
3. Utiliser le chemin par defaut sauf si la demande ou le contexte exige une variante.
4. Garder les hypotheses explicites et minimales.
5. Valider le resultat avec la check-list ou le script avant de finaliser.

## Validation

- Les sections requises sont presentes.
- Les faits et les hypotheses sont separes.
- La sortie est exploitable sans reprendre le prompt.
- Les outils ou dependances optionnels sont documentes.

## Cas d escalade

- Entrees critiques manquantes
- Sources contradictoires
- Outils requis indisponibles
