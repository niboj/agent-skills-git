# Resume de la specification Agent Skills

Ce depot suit le format public Agent Skills et les consignes de redaction associees.

## Regles de base

- Une skill est un dossier qui contient au minimum `SKILL.md`.
- `SKILL.md` doit contenir un frontmatter YAML suivi d instructions Markdown.
- Champs obligatoires du frontmatter : `name`, `description`.
- `name` doit utiliser uniquement des lettres minuscules, des chiffres et des traits d union.
- Garder `SKILL.md` leger ; deplacer le detail dans `references/`, `assets/` ou `scripts/` quand necessaire.
- Rediger `description` pour le declenchement, pas seulement pour la documentation.
- N utiliser des scripts que lorsque le determinisme ou la repetabilite est important.
- Preferer des evaluations realistes a des prompts artificiels.

## Politique du depot

- La documentation du depot destinee aux auteurs peut etre en francais.
- Les skills portables devraient etre redigees en anglais sauf raison forte de faire autrement.
- Le frontmatter optionnel au dela de `name` et `description` doit rester minimal.
- Si `allowed-tools` est utilise, le traiter comme experimental et le documenter explicitement.
