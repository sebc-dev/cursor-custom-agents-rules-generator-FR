# Suivi de Traduction - Projet Cursor Custom Agents Rules Generator

Ce document répertorie tous les fichiers du projet qui nécessitent une traduction en français, avec leur statut actuel et des commentaires sur les particularités à prendre en compte.

## Fichiers Exclus de la Traduction

Les fichiers suivants ne doivent PAS être traduits conformément aux instructions :
- `.cursorignore`
- `.cursorindexingignore`
- `.gitignore`
- Pour les fichiers `apply-rules.bat` et `apply-rules.sh`, seuls les textes d'affichage de test doivent être traduits (voir section spécifique ci-dessous)

## Fichiers à Traduire

### Fichiers Racine

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `CHANGELOG.md` | À traduire | |
| `readme.md` | À traduire | Document principal du projet |

### Dossier docs

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `agile-readme.md` | À traduire | |

### Dossier samples

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `star-trek-agents.md` | À traduire | Contient des personas de personnages Star Trek à préserver |
| `star-trek-agents-modes.json` | À traduire partiellement | Ne traduire que les champs de description, pas les identifiants techniques |

### Dossier xnotes

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `custom-agents.md` | À traduire | |
| `project-idea-prompt.md` | À traduire | |

## Textes d'Affichage dans les Scripts

### Script apply-rules.bat

Textes à traduire uniquement (sans modifier la structure du script) :

```
Error: Please provide the target project directory
Usage: %~nx0 <target-project-directory>
Creating new project directory: %TARGET_DIR%
Copying new file: %~nx2
Skipping existing file: %~nx2
Copying .cursor directory files...
Deployment Complete!
Core rule generator: %TARGET_DIR%\.cursor\rules\core-rules\rule-generating-agent.mdc
Sample sub-folders and rules: %TARGET_DIR%\.cursor\rules\{sub-folders}\
Sample Agile Workflow Templates: %TARGET_DIR%\.cursor\templates\
Workflow Documentation: %TARGET_DIR%\docs\workflow-rules.md
Updated .gitignore, .cursorignore, and .cursorindexingignore
```

### Script apply-rules.sh

Textes à traduire uniquement (sans modifier la structure du script) :

```
Error: Please provide the target project directory
Usage: ./apply-rules.sh <target-project-directory>
Creating new project directory: $TARGET_DIR
Copying new file: $(basename "$dest")
Skipping existing file: $(basename "$dest")
Copying .cursor directory files...
Setting up samples xnotes...
Updated .cursorindexingignore with all entries from source
Created new .cursorindexingignore file
Deployment Complete!
Core rule generator: $TARGET_DIR/.cursor/rules/core-rules/rule-generating-agent.mdc
Sample subfolders and rules: $TARGET_DIR/.cursor/rules/{sub-folders}/
Sample Agile Workflow Templates: $TARGET_DIR/.cursor/templates/
Workflow Documentation: $TARGET_DIR/docs/workflow-rules.md
Updated .gitignore, .cursorignore, and .cursorindexingignore
```

## Instructions Importantes pour la Traduction

1. **Préserver les termes techniques** : Ne pas traduire les noms de fichiers, chemins de dossiers, commandes ou paramètres techniques
2. **Maintenir la cohérence** : Utiliser une terminologie cohérente pour les termes récurrents dans tout le projet
3. **Conserver le formatage Markdown** : Maintenir la structure et le formatage Markdown des documents originaux
4. **Attention aux noms propres** : Ne pas traduire les noms de personnages Star Trek dans les exemples d'agents personnalisés
5. **Pour les scripts** : Ne modifier que les messages d'affichage, sans toucher aux variables ou à la structure du script

## Statut Global de Traduction

- **Fichiers totaux à traduire** : 8 fichiers complets + 2 fichiers partiellement
- **Fichiers traduits** : 0
- **Progression** : 0%

Dernière mise à jour : 20 avril 2025
