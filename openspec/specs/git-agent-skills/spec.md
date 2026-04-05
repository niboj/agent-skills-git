# Specification

## Title

Bibliotheque de skills Git pour Codex

## Status

Active

## Purpose

Definir les exigences stables du depot pour une bibliotheque de skills Git reutilisables, installables dans Codex, documentees, tracables et maintenables.

## Scope

Cette specification couvre :

- les skills Git du depot ;
- la documentation partagee Git ;
- les gabarits de creation de skills ;
- les scripts utilitaires propres aux skills Git ;
- la tracabilite des exemples obligatoires ;
- les contraintes de securite Git portees par les skills.

## Requirements

### Requirement 1. Skill inventory and structure

Le depot DOIT fournir un ensemble de skills Git distinctes, a portee limitee, stockees sous `skills/git-*/`.

Chaque skill Git DOIT inclure au minimum :

- un `SKILL.md` avec front matter YAML valide ;
- un `README.md` ;
- une documentation de reference suffisante pour deplacer les details hors du `SKILL.md`.

Chaque `SKILL.md` DOIT :

- contenir `name` et `description` ;
- utiliser une `description` commencant par `Use this skill when...` ;
- contenir les sections `Purpose`, `When To Use`, `When Not To Use`, `Required Inputs`, `Ordered Procedure`, `Guardrails`, `Output Expectations`, `Examples` et `Related References`.
- etre redige en anglais lorsqu il s agit d une skill Git portable destinee a Codex.

### Requirement 2. Shared reference documentation

Le depot DOIT mutualiser les connaissances Git stables dans `docs/reference/`.

Cette documentation DOIT couvrir au minimum :

- les fondations Git ;
- les regles de securite Git ;
- les strategies de branchement ;
- les criteres de choix rebase versus merge ;
- les motifs de recuperation ;
- le versionnage et les releases.

Les skills Git DOIVENT pointer vers cette documentation partagee lorsqu une regle est commune a plusieurs skills.

### Requirement 3. Git safety rules

Les skills Git DOIVENT refleter les garde-fous suivants :

- ne jamais committer directement sur `main` ;
- ne jamais faire de force push sur une branche protegee ;
- preferer `--force-with-lease` a `--force` lorsque la reecriture est explicitement autorisee ;
- refuser les actions a risque lorsque l etat du depot n a pas ete inspecte ou est juge non securitaire ;
- distinguer clairement `revert` et `reset` ;
- favoriser des changements petits, lisibles et revus.

Les skills qui touchent au push, a la reecriture d historique, au pull ou a la recuperation DOIVENT expliciter ces garde-fous.

### Requirement 4. Templates and scripts

Le depot DOIT fournir des gabarits reutilisables lorsqu ils reduisent le travail repetitif ou normalisent les sorties humaines.

Le depot PEUT fournir des scripts utilitaires, mais uniquement lorsqu ils apportent une valeur reelle de reduction de risque, de collecte de contexte ou de synthese repetitive.

Les scripts DOIVENT :

- etre non interactifs ;
- rester limites a un perimetre clair ;
- ne pas automatiser sans confirmation une action destructive ou ambigue.

### Requirement 5. Example traceability

Le depot DOIT maintenir 50 exemples Git numerotes `EX-001` a `EX-050`.

Chaque exemple DOIT :

- etre unique ;
- etre concret et operationnel ;
- identifier son skill concerne ;
- vivre dans un emplacement source autoritaire.

Le fichier `docs/governance/example-traceability-matrix.md` DOIT centraliser :

- l identifiant ;
- le titre ;
- le skill concerne ;
- l emplacement exact de l exemple.

La traduction ou la relecture d un exemple DOIT preserver :

- son identifiant `EX-*` ;
- son sens procedurier ;
- son skill concerne ;
- son emplacement source autoritaire dans la matrice.

### Requirement 6. Language policy for portable skills

Les skills Git portables destinees a Codex DOIVENT utiliser l anglais comme langue principale pour les contenus consultes directement par l agent pendant l execution.

Cette exigence s applique au minimum a :

- `SKILL.md`
- `README.md` du skill
- `references/*.md`
- `assets/templates/*.md`
- `assets/examples/sample-scenarios.md`

La documentation de gouvernance du depot PEUT rester en francais lorsqu elle cible principalement les maintainers humains du depot.

### Requirement 7. Governance and OpenSpec

Le depot DOIT documenter ses regles de redaction, de nommage, d usage des gabarits et d ecriture des exemples dans `docs/governance/`.

Tout changement substantiel sur la bibliotheque Git DOIT etre gere dans OpenSpec avec :

- une proposition ;
- un design ;
- des taches ;
- une specification active ou mise a jour.

Lorsqu un changement est termine, ses artefacts de changement DOIVENT etre archives sans perdre la specification active du depot.

## Acceptance signals

La specification est satisfaite si :

- les skills Git existent sous `skills/git-*/` avec `SKILL.md` et `README.md` ;
- la documentation partagee Git existe dans `docs/reference/` ;
- la matrice des exemples contient les 50 identifiants uniques ;
- les gabarits et scripts ajoutes respectent leur justification et leur perimetre ;
- les artefacts OpenSpec existent et sont archives correctement.
