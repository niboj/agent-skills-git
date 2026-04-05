# AGENTS

## Portee

Ces instructions s appliquent a tout le depot `agent-skills-git`.

## Objectif du projet

Ce depot maintient une bibliotheque de skills Git pour Codex au format Agent Skills.

Le perimetre actuel couvre :

- l ouverture de session Git en securite ;
- les workflows de branche, commit, pull, pull request et hotfix ;
- les garde-fous sur branches protegees ;
- la resolution de conflits ;
- l annulation, la recuperation et le versionnage ;
- la livraison complete d un changement par un agent ;
- la gouvernance documentaire et la tracabilite de 50 exemples Git.

## Langue et style

- Rediger la documentation de depot en francais.
- Rediger les `SKILL.md` en anglais pour les skills portables, sauf exception explicitement justifiee.
- Employer un style directif, factuel et actionnable.
- Eviter les formulations vagues, marketing ou speculatives.

## Sources de verite du depot

- `skills/` contient les skills Git installables.
- `docs/reference/` contient les references Git mutualisees entre skills.
- `docs/governance/` contient les regles de redaction, de nommage et de tracabilite.
- `docs/governance/example-traceability-matrix.md` est la source de verite pour les exemples `EX-001` a `EX-050`.
- `templates/skill-template/` est le gabarit de depart pour les futurs skills.
- `openspec/changes/` porte les artefacts OpenSpec des changements substantiels.

## Regles OpenSpec

- Pour tout changement substantiel, lire les artefacts OpenSpec existants avant de modifier le depot.
- Maintenir au minimum `proposal.md`, `design.md` et `tasks.md` pour le changement en cours.
- Garder la coherence entre OpenSpec, les skills, les references et le `README.md`.
- Ne pas faire evoluer durablement le depot sur un sujet important sans reflet dans OpenSpec.

## Regles Git du projet

- Verifier `git status --short --branch` avant toute modification importante.
- Travailler sur une branche dediee pour tout changement substantiel.
- Ne pas committer directement sur `main`.
- Ne pas reecrire l historique d une branche partagee sans demande explicite et justification claire.
- Ne pas utiliser de `force push` sur une branche protegee.
- Preferer `--force-with-lease` a `--force` uniquement quand la reecriture est explicitement permise.

## Structure attendue d une skill Git

Chaque skill Git de `skills/git-*/` doit contenir :

- `SKILL.md`
- `README.md`
- `references/concepts.md`
- `references/decision-rules.md`
- `references/examples.md` quand la skill possede des exemples detailles
- `assets/examples/sample-scenarios.md` quand des scenarios longs apportent une vraie valeur
- `assets/templates/` quand un gabarit reutilisable existe
- `scripts/` seulement si le script evite un travail repetitif non trivial ou reduit un risque reel

## Regles de redaction des skills

- Le front matter YAML de `SKILL.md` doit contenir `name` et `description`.
- La `description` doit commencer par `Use this skill when...`.
- `SKILL.md` doit rester court et orienter vers les references au lieu de les dupliquer.
- Les sections minimales attendues sont :
  - `Purpose`
  - `When To Use`
  - `When Not To Use`
  - `Required Inputs`
  - `Ordered Procedure`
  - `Guardrails`
  - `Output Expectations`
  - `Examples`
  - `Related References`
- Les exemples numerotes doivent etre concrets, distincts et directement reutilisables.

## Regles sur les exemples

- Les identifiants `EX-001` a `EX-050` sont reserves et doivent rester uniques.
- Un exemple detaille doit avoir un seul emplacement source autoritaire.
- Toute creation, suppression ou deplacement d un exemple numerote doit mettre a jour `docs/governance/example-traceability-matrix.md`.
- Eviter les doublons de contenu entre `SKILL.md`, `references/examples.md` et `assets/examples/sample-scenarios.md`.

## Regles sur les scripts

- Ne pas ajouter de scripts qui encapsulent seulement une commande Git triviale.
- Privilegier les scripts non interactifs.
- Documenter dans le `README.md` du skill la valeur apporte par chaque script.
- Ne jamais automatiser sans confirmation une action destructive ou ambigue.

## Validation minimale avant livraison

- Verifier que les chemins cites dans les references existent.
- Verifier que chaque skill Git a bien son `README.md` et son `SKILL.md`.
- Verifier que la matrice de tracabilite des exemples est a jour.
- Verifier que les gabarits et references partages pointent vers le contexte reel du depot.
- Relire le diff pour eviter les contradictions entre skills Git voisines.

## Installation locale

- L installation cible Codex se fait dans `~/.codex/skills`.
- Si une demande vise uniquement les skills Git, ne pas installer les skills generiques non Git du depot sans demande explicite.
- Lors d une installation manuelle, verifier que les dossiers `skills/git-*` ont bien ete copies avec leur `SKILL.md`.
