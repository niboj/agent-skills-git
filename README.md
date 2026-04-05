# agent-skills-git

Bibliotheque de skills Git pour Codex au format Agent Skills.

## Objectif

Ce depot regroupe des skills courtes, specialises et reutilisables pour guider un agent sur les workflows Git usuels :

- demarrage de session ;
- creation et synchronisation de branches ;
- conventions de commit ;
- preparation de pull requests ;
- protection des branches ;
- resolution de conflits ;
- annulation et recuperation ;
- livraison de changements ;
- refus des etats dangereux ;
- versionnage et tags ;
- gestion des hotfixes.

## Decouverte par Codex

Codex decouvre une skill a partir d un dossier sous `skills/<skill-name>/` contenant un `SKILL.md` avec front matter YAML `name` et `description`.

- `SKILL.md` : intention d usage, procedure, garde-fous et sorties attendues.
- `README.md` du skill : lecture humaine rapide et inventaire des ressources du skill.
- `references/` : regles detaillees, concepts, politiques et exemples.
- `assets/templates/` : gabarits reutilisables pour commits, pull requests, checklists ou resumes.
- `assets/examples/` : scenarios operatoires complets quand une procedure merite plus de contexte.
- `scripts/` : utilitaires non interactifs a valeur reelle ; ils restent optionnels.

## Structure Git creee dans ce depot

```text
skills/
|-- git-agent-session-start/
|-- git-branch-workflow/
|-- git-commit-convention/
|-- git-pull-sync-strategy/
|-- git-pull-request-workflow/
|-- git-protected-branch-guardrails/
|-- git-conflict-resolution-playbook/
|-- git-undo-and-recovery/
|-- git-agent-change-delivery/
|-- git-agent-refuse-unsafe-state/
|-- git-version-tagging/
`-- git-hotfix-workflow/

docs/
|-- reference/
`-- governance/

templates/
`-- skill-template/
```

## Ajouter un nouveau skill

1. Copier `templates/skill-template/`.
2. Nommer le dossier avec des lettres minuscules et des traits d union.
3. Rediger `SKILL.md` avec une description commencant par `Use this skill when...`.
4. Limiter le `SKILL.md` aux instructions decisives et deplacer le detail dans `references/`.
5. Ajouter au moins deux exemples visibles dans la section `examples` du skill.
6. Si le skill cree de nouveaux exemples numerotes, mettre a jour `docs/governance/example-traceability-matrix.md`.

## Validation manuelle d un skill

Avant utilisation ou livraison :

1. verifier que le front matter YAML est valide ;
2. verifier que `README.md`, `SKILL.md` et les references racontent la meme politique ;
3. verifier que les chemins cites existent ;
4. verifier qu aucun script n automatise une action destructive sans validation explicite ;
5. verifier que les exemples portent un identifiant unique et apparaissent dans la matrice de tracabilite.

## Reutiliser les 50 exemples

Les 50 exemples obligatoires `EX-001` a `EX-050` sont centralises dans [docs/governance/example-traceability-matrix.md](/c:/Users/jobph02/git/agent-skills-git/docs/governance/example-traceability-matrix.md).

- utiliser la matrice pour retrouver l emplacement source d un exemple ;
- reutiliser un exemple existant avant d en creer un nouveau ;
- citer l identifiant quand un `SKILL.md`, une reference ou un scenario s appuie sur un cas existant ;
- conserver un seul emplacement source detaille par identifiant pour eviter les divergences.

## Documentation partagee

- `docs/reference/` documente les regles Git communes pour toutes les skills.
- `docs/governance/` documente la facon d ecrire les skills, references, exemples et gabarits.
- `openspec/changes/add-git-agent-skills/` porte la trace de ce changement substantiel.

## Scripts retenus

Seuls quatre scripts ont ete ajoutes parce qu ils apportent une valeur operationnelle nette :

- collecte de contexte depot ;
- controle de branche protegee ;
- resume Markdown d un diff ;
- collecte des commits depuis le dernier tag.

Les autres automatisations triviales ont ete volontairement laissees sous forme de procedure documentee.
