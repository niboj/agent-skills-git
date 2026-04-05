# AGENTS

## Portee

Ces instructions s appliquent a tout le depot.

## Objectif du depot

- Maintenir une bibliotheque de skills Markdown reutilisables orientees creation et maintenance de skills.
- Privilegier un contenu clair, stable et portable vers Codex ou d autres runtimes compatibles Agent Skills.
- Conserver une structure simple par skill, avec un dossier dedie sous `skills/`.

## Regles de travail

- Avant de modifier un skill, lire au minimum le `SKILL.md` du dossier concerne et les references directement liees a la demande.
- Preserver les conventions deja visibles dans le depot: nommage stable, structure Markdown simple, responsabilite unique par skill.
- Limiter les changements au perimetre utile. Ne pas refactorer plusieurs skills sans besoin explicite.
- Ne pas introduire de format proprietaire ou de generation complexe quand un fichier Markdown suffit.
- Si une regle locale est ajoutee plus bas dans l arborescence, elle prime sur ce fichier pour son sous-dossier.

## Serie d agents pour la redaction de skills

Utiliser ces roles comme chaine de travail quand la demande porte sur la creation, la refonte ou l evaluation d un skill.

### 1. Agent Analyse Source

- Mission: lire les articles de reference, la documentation source et les artefacts du depot.
- Declenchement: quand un skill doit etre base sur une norme, une methode, une documentation interne ou une source externe.
- Livrable: une synthese des concepts stables, des termes obligatoires, des risques d interpretation et des references a reutiliser.
- Regles: extraire uniquement ce qui influence le contenu du skill; signaler les zones ambigues; citer les sources de travail dans la synthese.

### 2. Agent Cadrage Skill

- Mission: definir le perimetre du skill, son resultat attendu et le moment exact ou il doit etre active.
- Declenchement: quand le besoin est encore large ou qu un skill existant est trop generique.
- Livrable: nom du skill, promesse editoriale, cas d usage, non-objectifs et structure cible.
- Regles: viser une responsabilite unique; eviter les skills fourre-tout; decrire l intention utilisateur plutot que l implementation interne.

### 3. Agent Redaction Description

- Mission: ecrire ou optimiser le champ `description` du `SKILL.md`.
- Declenchement: quand le skill ne se declenche pas assez bien ou risque de se declencher trop souvent.
- Livrable: une description concise orientee activation.
- Regles: utiliser une formulation du type "Utiliser ce skill quand..."; viser quelques phrases; couvrir les formulations utilisateur probables.

### 4. Agent Redaction Procedure

- Mission: rediger le corps du `SKILL.md` avec une sequence d execution robuste.
- Declenchement: quand la procedure est trop vague, trop longue ou difficile a suivre.
- Livrable: sections claires pour objectif, entrees, etapes, controles qualite, sortie attendue et cas limites.
- Regles: faire remonter dans le `SKILL.md` les contraintes importantes des references; expliquer les verifications avant remise; preferer des etapes testables a des consignes floues.

### 5. Agent Scripts et Automatisation

- Mission: decider si un script doit etre ajoute au skill et encadrer son usage.
- Declenchement: quand la meme logique est repetee, quand une commande devient fragile ou quand une verification mecanique peut etre automatisee.
- Livrable: decision "sans script" ou "avec script", prerequis, chemin relatif et mode d execution.
- Regles: n ajouter un script que s il apporte un gain reel de fiabilite ou de repetabilite; documenter les prerequis; utiliser des chemins relatifs depuis la racine du skill.

### 6. Agent Evaluation

- Mission: evaluer le declenchement et la qualite de sortie du skill.
- Declenchement: quand un skill nouveau ou refondu doit etre verifie.
- Livrable: jeu de tests, assertions, constats, recommandations de correction.
- Regles: tester avec et sans skill ou contre une version precedente; separer evaluation du declenchement et evaluation de la sortie; exiger des preuves concretes pour chaque verdict.

## Workflow recommande

1. Analyse Source
2. Cadrage Skill
3. Redaction Description
4. Redaction Procedure
5. Scripts et Automatisation, seulement si necessaire
6. Evaluation

## Regles specifiques aux skills de ce depot

- Les `SKILL.md` doivent expliciter quand utiliser le skill, pas seulement ce qu il couvre.
- Les skills portables doivent etre redigees en anglais sauf besoin local explicite.
- La description doit favoriser le declenchement sur l intention utilisateur.
- La procedure doit inclure une validation minimale de completude, coherence et tracabilite.
- Les references `references/*.md` portent le detail; le `SKILL.md` doit en remonter les contraintes decisives pour eviter une execution trop generique.
- Ne pas ajouter `scripts/` sans justification explicite. Les scripts doivent etre non interactifs.
- Les utilitaires et templates de depot vivent hors des skills, dans `utilitaires/`, `gabarits/`, `references/` et `exemples/`.

## Structure attendue d un skill

- Un dossier sous `skills/` avec un nom explicite et stable.
- Un fichier `SKILL.md` qui decrit le but, le contexte d usage, la procedure et la sortie attendue.
- Des fichiers de reference dans `references/` seulement si necessaires a l execution du skill.

## Regles de redaction

- Rediger dans la langue principale du depot avec un ton stable et explicite.
- Produire des instructions actionnables et verifiables.
- Eviter les doublons entre `README.md`, `skills/README.md`, `SKILL.md` et les references.
- Preferer le Markdown brut, lisible sans rendu particulier.

## Validation minimale

- Verifier que les chemins cites existent.
- Verifier que les liens entre `SKILL.md` et `references/` sont coherents.
- Relire le diff pour eviter les contradictions entre skills voisins.
- Verifier que la description d un skill indique clairement quand l utiliser.
- Verifier que la sortie attendue est observable et evaluable.
