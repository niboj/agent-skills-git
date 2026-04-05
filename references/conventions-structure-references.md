# Conventions de structure des references

Garder des references peu profondes et orientees par leur finalite.

## Regles

- Preferer un seul repertoire `references/` par skill.
- Preferer de 1 a 4 fichiers dans `references/` pour la plupart des skills.
- Referencer explicitement chaque fichier depuis `SKILL.md` avec la raison de le charger.
- Garder les references a un seul niveau de profondeur depuis `SKILL.md`.
- Ne pas creer d arborescences thematiques imbriquees sauf si la skill est reellement volumineuse.

## Roles de fichiers suggeres

- `cadre-perimetre.md` : regles de cadrage et de delimitation
- `patterns.md` : motifs reutilisables d instructions ou de sorties
- `compatibility.md` : comportement et limites specifiques aux plateformes
- `checklist.md` : criteres de revue ou de validation

## Ce qui appartient aux references

- tableaux de decision
- motifs de sortie
- schemas detailles
- prompts d exemple
- notes de compatibilite

## Ce qui devrait rester dans SKILL.md

- l intention de declenchement
- le workflow par defaut
- les etapes centrales
- la boucle de validation
- une navigation claire vers les references
