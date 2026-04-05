# Guide de redaction de skills

Ce document adapte les principes de redaction de skills a un depot generique.

## Principes directeurs

- Ecrire des skills a responsabilite unique.
- Optimiser d abord le declenchement par la `description`.
- Garder le corps du skill court, concret et testable.
- N ajouter des scripts que si la fiabilite ou la repetabilite y gagne clairement.
- Evaluer separement le declenchement du skill et la qualite de sa sortie.

## Chaine de redaction recommandee

1. Analyser la source documentaire ou metier.
2. Definir l intention utilisateur et le resultat attendu.
3. Ecrire une `description` qui indique quand utiliser le skill.
4. Rediger une procedure avec controles qualite.
5. Evaluer le skill sur des cas simples, variants et limites.

## Description efficace

Une bonne `description` :

- decrit quand utiliser le skill ;
- parle en intention utilisateur ;
- reste concise ;
- couvre les formulations probables ;
- evite de decrire d abord l implementation interne.

## Corps de skill recommande

Un `SKILL.md` devrait en general contenir :

1. But
2. Quand utiliser
3. Entrees attendues
4. Procedure
5. Controles qualite
6. Sortie attendue
7. Cas limites

## Quand ajouter un script

Ajouter un `scripts/` seulement si :

- une verification mecanique est repetee a chaque execution ;
- une commande complexe devient fragile ;
- un traitement recurrent merite d etre fiabilise.

Sinon, preferer un skill purement documentaire.

## Evaluation minimale

Pour un skill nouveau ou refondu :

1. Preparer 3 a 5 prompts representatifs.
2. Tester au moins un cas limite.
3. Verifier si le skill se declenche sur les bons prompts.
4. Verifier si la sortie respecte la structure annoncee.
5. Noter les ambiguites et corriger le `SKILL.md` avant generalisation.

## Adaptation locale

- Definir une convention de nommage stable pour les dossiers de skills.
- Garder les references dans `references/` au plus pres du skill qui les utilise.
- Remonter dans le `SKILL.md` seulement les contraintes qui changent reellement l execution.
