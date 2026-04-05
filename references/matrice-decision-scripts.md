# Matrice de decision pour les scripts

Ajouter un script seulement quand il ameliore le determinisme, la repetabilite ou la validation.

## Ajouter un script quand

- la meme logique devrait sinon etre reecrite a repetition ;
- une etape de validation peut etre automatisee de maniere fiable ;
- une transformation est mecanique et sujette aux erreurs a la main ;
- la sortie doit etre structuree pour un usage en aval.

## Ne pas ajouter de script quand

- la tache repose surtout sur le jugement et la redaction ;
- le script ne ferait que reformuler les instructions de la skill ;
- le script deleguerait a un autre modele et masquerait le workflow ;
- le script ajoute une charge d installation sans valeur repetable.

## Exigences pour les scripts

- non interactif
- arguments explicites
- codes de sortie clairs
- messages utiles sur stderr
- dependances documentees
- forme de sortie deterministe quand c est possible
