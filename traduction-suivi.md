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
| `CHANGELOG.md` | ✅ Traduit | Traduit le 20/04/2025 |
| `readme.md` | ✅ Traduit | Traduit le 20/04/2025 |

### Dossier docs

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `agile-readme.md` | ✅ Traduit | Traduit le 20/04/2025 |

### Dossier samples

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `star-trek-agents.md` | ✅ Traduit | Traduit le 20/04/2025 |
| `star-trek-agents-modes.json` | ✅ Traduit partiellement | Traduit le 20/04/2025 - Seuls les champs de description ont été traduits |

### Dossier xnotes

| Fichier | Statut | Commentaires |
|---------|--------|-------------|
| `custom-agents.md` | ✅ Traduit | Traduit le 20/04/2025 |
| `project-idea-prompt.md` | ✅ Traduit | Traduit le 20/04/2025 |

## Textes d'Affichage dans les Scripts

### Script apply-rules.bat

Textes traduits (sans modifier la structure du script) :

```
Erreur : Veuillez fournir le répertoire cible du projet
Utilisation : %~nx0 <répertoire-cible-du-projet>
Création du nouveau répertoire du projet : %TARGET_DIR%
Copie du nouveau fichier : %~nx2
Ignorer le fichier existant : %~nx2
Copie des fichiers du répertoire .cursor...
Déploiement terminé !
Générateur de règles principal : %TARGET_DIR%\.cursor\rules\core-rules\rule-generating-agent.mdc
Exemples de sous-dossiers et règles : %TARGET_DIR%\.cursor\rules\{sub-folders}\
Modèles de flux de travail agile : %TARGET_DIR%\.cursor\templates\
Documentation du flux de travail : %TARGET_DIR%\docs\workflow-rules.md
.gitignore, .cursorignore, et .cursorindexingignore mis à jour
```

### Script apply-rules.sh

Textes traduits (sans modifier la structure du script) :

```
Erreur : Veuillez fournir le répertoire cible du projet
Utilisation : ./apply-rules.sh <répertoire-cible-du-projet>
Création du nouveau répertoire du projet : $TARGET_DIR
Copie du nouveau fichier : $(basename "$dest")
Ignorer le fichier existant : $(basename "$dest")
Copie des fichiers du répertoire .cursor...
Configuration des exemples xnotes...
.cursorindexingignore mis à jour avec toutes les entrées de la source
Nouveau fichier .cursorindexingignore créé
Déploiement terminé !
Générateur de règles principal : $TARGET_DIR/.cursor/rules/core-rules/rule-generating-agent.mdc
Exemples de sous-dossiers et règles : $TARGET_DIR/.cursor/rules/{sub-folders}/
Modèles de flux de travail agile : $TARGET_DIR/.cursor/templates/
Documentation du flux de travail : $TARGET_DIR/docs/workflow-rules.md
.gitignore, .cursorignore, et .cursorindexingignore mis à jour
```

## Instructions Importantes pour la Traduction

1. **Préserver les termes techniques** : Ne pas traduire les noms de fichiers, chemins de dossiers, commandes ou paramètres techniques
2. **Maintenir la cohérence** : Utiliser une terminologie cohérente pour les termes récurrents dans tout le projet
3. **Conserver le formatage Markdown** : Maintenir la structure et le formatage Markdown des documents originaux
4. **Attention aux noms propres** : Ne pas traduire les noms de personnages Star Trek dans les exemples d'agents personnalisés
5. **Pour les scripts** : Ne modifier que les messages d'affichage, sans toucher aux variables ou à la structure du script

## Statut Global de Traduction

- **Fichiers totaux à traduire** : 8 fichiers complets + 2 fichiers partiellement
- **Fichiers traduits** : 8 fichiers complets + 2 fichiers partiellement
- **Progression** : 100%

Dernière mise à jour : 20 avril 2025
