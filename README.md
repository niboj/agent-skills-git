# agent-skills-git

Bibliotheque de skills Git pour Codex, documentee et tracable, au format Agent Skills.

## But du depot

Ce projet fournit un ensemble de skills Git reutilisables pour guider un agent Codex sur des taches Git courantes sans fusionner toutes les responsabilites dans une seule skill trop large.

Le depot couvre actuellement :

- demarrage de session Git en securite ;
- creation et synchronisation de branches ;
- conventions de commit ;
- preparation de pull requests ;
- protection des branches et refus des etats dangereux ;
- resolution de conflits ;
- undo, recovery, tagging et hotfix ;
- livraison complete d un changement par un agent.

## Structure du depot

```text
.
|-- AGENTS.md
|-- README.md
|-- docs/
|   |-- governance/
|   `-- reference/
|-- openspec/
|   `-- changes/
|-- templates/
|   `-- skill-template/
`-- skills/
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
```

## Comment Codex decouvre les skills

Codex decouvre une skill a partir d un dossier sous `skills/<skill-name>/` contenant un `SKILL.md` avec front matter YAML valide.

Chaque skill Git suit la meme logique :

- `SKILL.md` : intention d usage, procedure, garde-fous et sorties attendues.
- `README.md` : lecture humaine rapide du role du skill.
- `references/` : concepts, regles de decision et exemples detailles.
- `assets/templates/` : gabarits reutilisables quand ils apportent une vraie valeur.
- `assets/examples/` : scenarios operatoires longs.
- `scripts/` : utilitaires non interactifs, uniquement lorsqu ils reduisent un risque ou une tache repetitive non triviale.

## Skills Git disponibles

- `git-agent-session-start`
- `git-branch-workflow`
- `git-commit-convention`
- `git-pull-sync-strategy`
- `git-pull-request-workflow`
- `git-protected-branch-guardrails`
- `git-conflict-resolution-playbook`
- `git-undo-and-recovery`
- `git-agent-change-delivery`
- `git-agent-refuse-unsafe-state`
- `git-version-tagging`
- `git-hotfix-workflow`

## Documentation partagee

`docs/reference/` mutualise les connaissances Git stables :

- [git-foundations.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-foundations.md)
- [git-safety-rules.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-safety-rules.md)
- [git-branching-strategies.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-branching-strategies.md)
- [git-rebase-vs-merge.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-rebase-vs-merge.md)
- [git-recovery-patterns.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-recovery-patterns.md)
- [git-tagging-and-releases.md](C:/Users/jobph02/git/agent-skills-git/docs/reference/git-tagging-and-releases.md)

`docs/governance/` centralise la gouvernance du depot, dont :

- [example-traceability-matrix.md](C:/Users/jobph02/git/agent-skills-git/docs/governance/example-traceability-matrix.md)
- [skill-authoring-guidelines.md](C:/Users/jobph02/git/agent-skills-git/docs/governance/skill-authoring-guidelines.md)
- [template-usage-guide.md](C:/Users/jobph02/git/agent-skills-git/docs/governance/template-usage-guide.md)

## Les 50 exemples obligatoires

Le depot contient 50 exemples Git numerotes `EX-001` a `EX-050`.

Regles d usage :

- chaque exemple a un identifiant unique ;
- chaque exemple detaille a un emplacement source autoritaire ;
- la matrice [example-traceability-matrix.md](C:/Users/jobph02/git/agent-skills-git/docs/governance/example-traceability-matrix.md) est la reference centrale ;
- les exemples sont repartis entre `SKILL.md`, `references/examples.md` et `assets/examples/sample-scenarios.md`.

## Ajouter une nouvelle skill Git

1. Copier [templates/skill-template](C:/Users/jobph02/git/agent-skills-git/templates/skill-template).
2. Creer un dossier sous `skills/` avec un nom stable en minuscules et traits d union.
3. Rediger le `SKILL.md` avec `name`, `description` et une description commencant par `Use this skill when...`.
4. Garder `SKILL.md` court ; deplacer le detail vers `references/`.
5. Ajouter un `README.md` propre au skill.
6. Ajouter des gabarits ou scripts seulement s ils ont une utilite concrete.
7. Mettre a jour OpenSpec si le changement est substantiel.
8. Mettre a jour la matrice de tracabilite si des exemples numerotes changent.

## Validation manuelle

Avant livraison :

1. verifier `git status --short --branch` ;
2. verifier la presence de `SKILL.md` et `README.md` pour chaque skill touchee ;
3. verifier que les chemins cites dans les references existent ;
4. verifier que les descriptions sont bien formulees pour le declenchement ;
5. verifier que la matrice des exemples est a jour ;
6. verifier qu aucun script nouveau n automatise une action destructive sans garde-fou explicite.

## OpenSpec

Le depot utilise OpenSpec pour les changements substantiels.

Le changement qui a introduit la bibliotheque Git est documente dans :

- [proposal.md](C:/Users/jobph02/git/agent-skills-git/openspec/changes/add-git-agent-skills/proposal.md)
- [design.md](C:/Users/jobph02/git/agent-skills-git/openspec/changes/add-git-agent-skills/design.md)
- [tasks.md](C:/Users/jobph02/git/agent-skills-git/openspec/changes/add-git-agent-skills/tasks.md)

## Installation dans le profil Codex

Les skills Git peuvent etre copiees dans `C:\Users\jobph02\.codex\skills`.

Pour une installation selective des seules skills Git, copier uniquement les dossiers `skills/git-*`.

Le depot contient aussi l utilitaire [installer_skills_codex.py](C:/Users/jobph02/git/agent-skills-git/utilitaires/installer_skills_codex.py), mais il installe toutes les skills detectees sous `skills/`. Pour une installation ciblee sur le sous-ensemble Git, preferer une copie selective ou adapter le filtre avant execution.

## Scripts retenus dans ce depot

Seuls les scripts suivants ont ete conserves :

- collecte de contexte depot ;
- controle de branche protegee ;
- resume Markdown d un diff ;
- collecte des commits depuis le dernier tag.

Les scripts de `pull`, `rebase`, `reset`, `clean`, `commit` ou `push` automatiques n ont pas ete crees volontairement, car ils seraient soit triviaux, soit trop risqués a encapsuler.
