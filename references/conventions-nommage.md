# Conventions de nommage des skills

## Format requis

- Minuscules uniquement
- Chiffres permis
- Traits d union permis
- Aucun espace
- Aucun caractere de soulignement
- Aucun caractere accentue
- Rester sous 64 caracteres
- Longueur maximale : 64 caracteres

## Guide de nommage

- Normaliser les collections avec un motif `theme-sujet-action` quand plusieurs skills partagent un meme domaine.
- Utiliser `theme` pour la famille fonctionnelle, `sujet` pour l objet traite et `action` pour l operation principale.
- Exemple : `catalog-entite-documenter`, `incident-resume-rediger`, `skill-optimiser-description`.
- Si le depot ne gere pas une collection homogene, garder un nom court mais conserver une structure stable et comparable entre skills voisines.
- Preferer des noms portes par un verbe : `skill-optimiser-description`
- Utiliser une action precise, pas un sujet trop large
- Garder les noms stables une fois publies
- Correspondre exactement au nom du dossier

## Guide pour la description

Les descriptions devraient :

- indiquer quand utiliser la skill ;
- mentionner l artefact ou le resultat produit ;
- inclure des formulations probables de declenchement ou des intentions utilisateur ;
- eviter les formulations generiques comme "best practices" sans resultat concret.
