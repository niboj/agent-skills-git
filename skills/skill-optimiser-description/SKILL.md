---
name: skill-optimiser-description
description: Utiliser ce skill quand il faut ameliorer la description d une skill afin qu elle se declenche sur les bonnes intentions utilisateur, nomme le resultat concret et evite les faux positifs venant de taches voisines ou plus larges. Ne pas l utiliser pour reecrire l ensemble du `SKILL.md`. Keywords: trigger quality, description rewrite, false positives, activation, implicit loading.
---

# Skill: optimisation de description de skill

## But

Reecrire une `description` de skill pour ameliorer la qualite de declenchement.

## Quand utiliser

- Quand une skill se declenche trop souvent sur des prompts sans rapport.
- Quand une skill ne se declenche pas sur des demandes utilisateur realistes.
- Quand une nouvelle skill a besoin d une description orientee declenchement avant publication.

## Ne pas utiliser

- Ne pas utiliser ce skill pour une revue complete de skill.
- Ne pas utiliser ce skill pour generer une suite d evaluations.

## Entrees

- La description actuelle ou un brouillon
- Des exemples realistes de prompts qui doivent et ne doivent pas declencher
- `references/heuristiques-description.md`

## Procedure

1. Lire `references/heuristiques-description.md`.
2. Identifier les intentions utilisateur reelles qui doivent declencher la skill.
3. Identifier les intentions voisines qui ne doivent pas la declencher.
4. Reecrire la description pour inclure :
   - quand utiliser la skill ;
   - la sortie concrete ou l action attendue ;
   - les formulations probables des utilisateurs.
5. Garder la description concise et specifique.
6. Verifier la reecriture a l aide des exemples positifs et negatifs.

## Validation

- La description nomme la tache et la sortie attendue.
- Le langage de declenchement est explicite.
- Les taches generiques voisines sont exclues par le perimetre.
- La description reste lisible et portable.

## Sortie

- Une description revisee avec une courte justification et, au besoin, des prompts de test de declenchement.
