# agent-skills-git

Depot gabarit pour concevoir, maintenir, valider et faire evoluer des Agent Skills reutilisables pour Codex et d autres outils compatibles avec la specification Agent Skills.

## Objectif

Ce depot est un gabarit de reference pour les equipes qui veulent industrialiser la redaction de skills.

Il fournit :

- une structure de depot reutilisable pour une bibliotheque de skills ;
- un ensemble initial cible de skills de redaction de skills ;
- des gabarits pour `SKILL.md`, les revues et les evaluations ;
- des utilitaires legers et non interactifs ;
- des exemples derives de sources realistes ;
- un noyau portable qui peut etre deploie dans des repertoires de skills Codex, Claude Code ou OpenCode.

Ce depot est une bibliotheque d auteur. Dans un projet consommateur, les skills publiees peuvent etre copiees ou synchronisees dans `.agents/skills/`, `.claude/skills/` ou `.opencode/skills/` selon le runtime.

## Structure du depot

```text
.
|-- AGENTS.md
|-- README.md
|-- documentation/
|   `-- guide-redaction-skills.md
|-- evaluations/
|   `-- evals.json
|-- exemples/
|   |-- skills-derivees/
|   `-- sources-brutes/
|-- references/
|   |-- resume-specification-agent-skills.md
|   `-- conventions-nommage.md
|-- skills/
|   |-- skill-definir-perimetre/
|   |-- skill-rediger-instructions/
|   |-- skill-optimiser-description/
|   |-- skill-structurer-ressources/
|   |-- skill-construire-gabarits/
|   |-- skill-construire-evaluations/
|   |-- skill-reviser/
|   |-- skill-documenter-compatibilite/
|   |-- skill-normaliser-style/
|   |-- skill-depuis-artefact/
|   |-- _templates/
|   `-- skill-exemple/
|-- gabarits/
|   |-- skill-minimale/
|   |-- skill-avancee/
|   |-- evals.json
|   `-- liste-verification-revue.md
`-- utilitaires/
    |-- verifier_toutes_skills.py
    |-- verifier_skill.py
    |-- installer_skills_codex.py
    |-- installer_skills_opencode.py
    `-- initialiser_skill.py
```

## Role des repertoires

- `skills/` : la bibliotheque de skills elle-meme, un dossier par skill.
- `gabarits/` : des fichiers de depart reutilisables pour de nouvelles skills et evaluations.
- `references/` : des regles et syntheses au niveau du depot qui structurent la redaction.
- `references/matrice-compatibilite-plateformes.md` : le noyau portable et les notes specifiques aux plateformes.
- `utilitaires/` : des scripts d aide non interactifs pour l initialisation et les verifications.
- `utilitaires/installer_skills_codex.py` : installe les skills dans un repertoire local compatible Codex.
- `utilitaires/installer_skills_opencode.py` : installe les skills dans un repertoire global de skills OpenCode.
- `exemples/` : des artefacts sources realistes et des sorties derivees utilises pour l apprentissage et l iteration.
- `evaluations/` : des exemples d evaluation au niveau du depot et des cas de test partages.
- `documentation/` : de la documentation du depot orientee humain.

## Ensemble initial de skills

Ces skills completent volontairement des skills de base comme `skill-creator` et `skill-validator` au lieu de les dupliquer.

- `skill-definir-perimetre`
  Transforme un besoin vague en concept de skill borne. Cette skill est plus ciblee qu une skill de creation complete et utile avant la redaction.
- `skill-rediger-instructions`
  Ecrit ou reecrit le corps de `SKILL.md` une fois le perimetre connu. Elle isole le travail de redaction.
- `skill-optimiser-description`
  Se concentre uniquement sur le champ `description` pour ameliorer le declenchement et reduire les faux positifs.
- `skill-structurer-ressources`
  Decide quand ajouter `references/`, `scripts/`, `assets/` et `evals/` et comment garder `SKILL.md` concis.
- `skill-construire-gabarits`
  Produit des gabarits reutilisables de depot plutot que des fichiers de skill ponctuels.
- `skill-construire-evaluations`
  Construit des cas realistes `evals/evals.json` pour le declenchement et la qualite de sortie.
- `skill-reviser`
  Passe en revue une skill existante pour reperer les problemes de perimetre, de declenchement, de validation et de maintenabilite.
- `skill-documenter-compatibilite`
  Documente les dependances, hypotheses d environnement, outils optionnels et metadonnees experimentales.
- `skill-normaliser-style`
  Normalise le ton, la qualite des instructions et la structure sur plusieurs skills sans changer la capacite.
- `skill-depuis-artefact`
  Derive une skill reutilisable a partir d un vrai fil, incident, document ou artefact de workflow.

## Pourquoi cet ensemble

- Il garde chaque skill specialisee et faiblement couplee.
- Il separe les concerns de conception, redaction, revue, evaluation et empaquetage.
- Il cree un workflow pratique pour faire evoluer une bibliotheque de skills dans le temps.

## Workflow de redaction recommande

1. Partir d une tache ou d un artefact reel et repetitif.
2. Utiliser `skill-depuis-artefact` ou `skill-definir-perimetre` pour definir la capacite.
3. Utiliser `skill-optimiser-description` tot si le declenchement risque d etre ambigu.
4. Utiliser `skill-rediger-instructions` pour rediger le `SKILL.md`.
5. Utiliser `skill-structurer-ressources` pour decider ce qui appartient a `references/`, `scripts/`, `assets/` et `evals/`.
6. Utiliser `skill-construire-gabarits` si le resultat doit devenir un motif de depart reutilisable.
7. Utiliser `skill-construire-evaluations` pour ajouter des cas d evaluation realistes.
8. Utiliser `skill-reviser` et `skill-normaliser-style` avant de publier ou copier la skill ailleurs.

## Compatibilite multiplateforme

Le depot adopte par defaut la forme de skill la plus portable :

- `SKILL.md`
- frontmatter avec `name` et `description`
- `references/`, `scripts/`, `assets/` et `evals/` optionnels

Cibles d installation recommandees :

- dispositions Codex et compatibles Agent Skills generiques : `.agents/skills/<skill-name>/`
- Claude Code : `.claude/skills/<skill-name>/`
- OpenCode : `.opencode/skills/<skill-name>/`

Le guide de compatibilite se trouve dans `references/matrice-compatibilite-plateformes.md`.

## Creer une nouvelle skill dans ce depot

### Voie rapide avec le script utilitaire

```bash
python3 utilitaires/initialiser_skill.py   --root skills   --name release-notes-writer   --description "Utiliser ce skill quand il faut generer des notes de version a partir de l historique de commits, de pull requests fusionnees ou de resumes de changements, surtout quand la sortie doit regrouper les changements par audience, domaine fonctionnel ou perimetre de livraison."   --with-references   --with-evals
```

Puis :

1. affiner le perimetre avec `skill-definir-perimetre` ;
2. rediger le corps avec `skill-rediger-instructions` ;
3. affiner la formulation de declenchement avec `skill-optimiser-description` ;
4. ajouter ou reduire les ressources avec `skill-structurer-ressources` ;
5. revoir avec `skill-reviser`.

### Voie manuelle

1. Copier `gabarits/skill-minimale/SKILL.md` ou `gabarits/skill-avancee/SKILL.md`.
2. Creer un nouveau dossier sous `skills/<skill-name>/`.
3. Definir un `name` valide et une `description` orientee declenchement.
4. Ajouter `references/`, `scripts/`, `assets/` ou `evals/` seulement si c est justifie.
5. Valider la structure avec `python3 utilitaires/verifier_skill.py skills/<skill-name>`.
6. Ajouter au moins trois cas d evaluation realistes dans `evals/evals.json`.

## Validation et evolution

Utiliser d abord les verifications legeres :

```bash
python3 utilitaires/verifier_skill.py skills/skill-optimiser-description
```

Valider ensuite l ensemble des skills du depot :

```bash
python3 utilitaires/verifier_toutes_skills.py
```

Puis ajouter ou mettre a jour des evaluations realistes dans le repertoire `evals/` de la skill ou dans le dossier `evaluations/` au niveau du depot.

Quand une skill evolue :

- garder le meme nom de dossier sauf si la capacite change materiellement ;
- preserver la discipline de perimetre ;
- preferer l affinage des descriptions et procedures a l ajout de nouvelles branches trop larges ;
- deplacer le detail volumineux dans `references/` plutot que d agrandir `SKILL.md` indefiniment.

## Conventions de nommage

- lettres minuscules, chiffres et traits d union uniquement
- moins de 64 caracteres
- le nom du dossier doit correspondre au `name` du frontmatter
- preferer des noms portes par un verbe ou une action
- eviter les noms vagues comme `documentation` ou `workflow-helper`

## Regles de qualite

- Chaque skill doit contenir `SKILL.md`.
- `SKILL.md` doit inclure un frontmatter YAML avec `name` et `description`.
- `description` doit indiquer quand utiliser la skill.
- Garder `SKILL.md` concis et procedural.
- Utiliser la divulgation progressive : deplacer le detail lourd dans `references/`, `scripts/` ou `assets/`.
- Les scripts doivent etre non interactifs et produire des erreurs utiles.
- Les cas d evaluation doivent etre realistes et observables.
- Utiliser l anglais pour les skills portables sauf si une skill localisee est intentionnelle.
- Rester par defaut sur le noyau portable du frontmatter sauf si une extension specifique a une plateforme apporte une vraie valeur.

## Initialiser un nouveau depot a partir de ce gabarit

Si vous voulez creer un nouveau depot de bibliotheque de skills a partir de ce gabarit :

```bash
git clone <template-repo-url> my-agent-skills
cd my-agent-skills
rm -rf .git
git init
git add .
git commit -m "Initialize agent skills repository from template"
```

Puis ajuster :

1. le nom du depot dans `README.md` ;
2. la langue du domaine et la politique du depot dans `AGENTS.md` ;
3. l ensemble initial de skills dans `skills/` ;
4. les references partagees dans `references/`.

Si le runtime cible decouvre les skills depuis `.agents/skills/`, publier ou copier les skills finalisees depuis cette bibliotheque d auteur vers cet emplacement.

## Installer localement dans Codex

Installer toutes les vraies skills dans le repertoire global de skills de Codex :

```bash
python3 utilitaires/installer_skills_codex.py
```

Cible par defaut :

- `$CODEX_HOME/skills` quand `CODEX_HOME` est defini
- sinon `~/.codex/skills`

Options utiles :

```bash
python3 utilitaires/installer_skills_codex.py --force
python3 utilitaires/installer_skills_codex.py --target-dir ~/.codex/skills
```

## Installer localement dans OpenCode

Installer toutes les vraies skills dans le repertoire global de skills de OpenCode :

```bash
python3 utilitaires/installer_skills_opencode.py
```

Cible par defaut :

- `~/.config/opencode/skills`

Options utiles :

```bash
python3 utilitaires/installer_skills_opencode.py --force
python3 utilitaires/installer_skills_opencode.py --target-dir ~/.config/opencode/skills
```
