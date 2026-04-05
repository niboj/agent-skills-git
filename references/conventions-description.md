# Conventions pour les descriptions

Les descriptions sont la surface principale de declenchement pour le chargement implicite d une skill.

## Forme requise

Rediger les descriptions comme un paragraphe compact qui repond a :

- ce que fait la skill ;
- quand l utiliser ;
- quand ne pas l utiliser, si les faux positifs sont probables ;
- quels artefacts ou mots-cles constituent de forts signaux de declenchement.

## Motif recommande

Utiliser ce motif :

`Utiliser ce skill quand il faut <tache> pour <artefact ou resultat>, surtout quand <signaux de declenchement>. Ne pas l utiliser pour <taches proches mais differentes>.`

## Bons signaux de declenchement

- noms d artefacts : `SKILL.md`, `evals.json`, `references/`, `scripts/`
- formes de demande : "transformer ceci en skill", "ameliorer le declenchement", "revoir cette skill"
- resultats attendus : "concept borne", "gabarit portable", "tests d activation"

## Anti-motifs

- descriptions limitees au sujet
- descriptions qui repetent le nom du dossier
- descriptions qui ne mentionnent que des bonnes pratiques sans sortie concrete
- descriptions qui essaient de couvrir plusieurs taches sans lien
