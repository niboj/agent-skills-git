# Matrice de compatibilite des plateformes

Ce depot vise un noyau portable pour les Agent Skills, avec un comportement specifique aux plateformes documente explicitement.

## Noyau portable partage

- Un dossier par skill
- Point d entree `SKILL.md`
- Frontmatter YAML
- `name` et `description`
- Corps Markdown
- `references/`, `scripts/`, `assets/`, `evals/` optionnels

## Chemins de decouverte

### Codex / disposition generique compatible agent

- `.agents/skills/<name>/SKILL.md`
- `~/.agents/skills/<name>/SKILL.md`

### Claude Code

- `.claude/skills/<name>/SKILL.md`
- `~/.claude/skills/<name>/SKILL.md`

### OpenCode

- `.opencode/skills/<name>/SKILL.md`
- `~/.config/opencode/skills/<name>/SKILL.md`
- lit aussi les dispositions `.claude/skills/` et `.agents/skills/`

## Portabilite du frontmatter

### Portable dans tous les environnements cibles

- `name`
- `description`

### Champs optionnels documentes par OpenCode

- `license`
- `compatibility`
- `metadata`

### Champs optionnels specifiques a Claude

- `disable-model-invocation`
- `allowed-tools`
- `model`
- `effort`
- `context`
- `agent`

## Differences de comportement notables

### Claude Code

- `description` est recommandee et utilisee pour le chargement automatique.
- Les descriptions de plus d environ 250 caracteres sont tronquees dans la liste des skills ; il faut donc placer le cas d usage principal au debut.
- `name` est optionnel dans Claude, mais il faut le conserver pour la portabilite entre outils.

### OpenCode

- Seuls `name`, `description`, `license`, `compatibility` et `metadata` sont reconnus dans le frontmatter.
- Les champs inconnus du frontmatter sont ignores.
- `description` doit rester entre 1 et 1024 caracteres.

### Defaut portable du depot

- Utiliser uniquement `name` et `description` dans les gabarits diffuses.
- Ajouter des metadonnees specifiques a une plateforme seulement dans des variantes volontairement propres a un outil.

## Guide

- Garder les gabarits par defaut du depot sur le seul noyau portable.
- Mettre les consignes specifiques aux plateformes dans les references, pas dans le frontmatter de chaque skill.
- Si des champs specifiques a Claude sont utilises, isoler cette decision dans une note de compatibilite.
- Traiter tout frontmatter non portable comme optionnel, pas comme comportement par defaut.
