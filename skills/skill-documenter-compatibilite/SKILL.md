---
name: skill-documenter-compatibilite
description: Utiliser ce skill quand il faut documenter les dependances d une skill, ses hypotheses d environnement, les outils compatibles, les integrations optionnelles et les champs experimentaux afin qu elle reste portable entre Codex, Claude, OpenCode ou d autres outils compatibles Agent Skills. Ne pas l utiliser pour ajouter par defaut du frontmatter specifique a une plateforme. Keywords: compatibility, dependencies, portability, allowed-tools, multi-platform.
---

# Skill: documentation de compatibilite de skill

## But

Documenter la compatibilite et les dependances sans polluer les instructions centrales de la skill.

## Quand utiliser

- Quand une skill depend d outils locaux, de scripts ou d hypotheses d environnement.
- Quand une skill doit rester portable entre plusieurs runtimes compatibles.
- Quand une skill ajoute des metadonnees experimentales ou des restrictions d outils.

## Ne pas utiliser

- Ne pas utiliser ce skill pour elargir le perimetre fonctionnel d une skill.
- Ne pas choisir par defaut un frontmatter non portable sans justification.

## Entrees

- La skill cible
- Ses scripts, references et assets
- `references/schema-compatibilite.md`

## Procedure

1. Lire `references/schema-compatibilite.md`.
2. Inventorier les runtimes requis, les CLI, les dependances de fichiers et les hypotheses.
3. Distinguer les elements requis, optionnels et experimentaux.
4. Documenter les notes de compatibilite dans un fichier de reference ou un document du depot, pas dans une longue prose au sein de `SKILL.md`.
5. Si des metadonnees experimentales comme `allowed-tools` sont utilisees, les signaler explicitement comme experimentales.
6. Garder une formulation concrete afin qu un autre mainteneur puisse juger la portabilite.

## Validation

- Les dependances requises sont explicites.
- Les outils optionnels ne sont pas presentes comme obligatoires.
- Les champs experimentaux sont etiquetes.
- Les limites de portabilite sont faciles a trouver.

## Sortie

- Une note de compatibilite et de dependances prete a etre diffusee avec la skill ou le depot.
