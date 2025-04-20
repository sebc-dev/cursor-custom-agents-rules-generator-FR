# Journal des Modifications

## Avril 2025

### Correction du Clonage de Toutes les Entrées .cursorindexingignore

Modification de `apply-rules.sh` pour copier correctement toutes les entrées du fichier source `.cursorindexingignore` vers les projets cibles. Auparavant, le script ne vérifiait et n'ajoutait qu'une seule entrée (`.cursor/templates/`).

**Remarque :** Si vous avez cloné précédemment et utilisé le générateur, assurez-vous de mettre à jour manuellement votre `.cursorindexingignore` pour inclure toutes les entrées listées dans le fichier d'ignorance du modèle.

## 31 Mars 2025

Le grand changement avec cette mise à jour est la création d'un dossier d'exemples avec les agents de personnages fictifs de Star Trek, ce qui est un exemple plus illustratif (et amusant pour travailler).

Un exemple plus pratique et sérieux est maintenant en place dans le fichier modes.json. Merci à tous les retours de la communauté - les exemples ne seront pas copiés automatiquement.

## 30 Mars 2025

Début du journal des modifications - les changements antérieurs sont disponibles dans l'historique des commits/fusions - mais ce journal sera maintenu à l'avenir.

Implémentation des Agents Personnalisés et ajout d'un exemple des agents que j'utilise avec une touche amusante de Star Trek. Non destiné à une utilisation réelle, plutôt à des fins illustratives.

Introduction d'instructions et de règles pour aider à générer votre propre fichier modes.json pour vos agents.

Amélioration considérable de la génération de règles pour mieux prendre en charge les changements dans les règles d'agents fonctionnant plus fiablement.

Bug critique introduit dans apply-rules.bat qui sera corrigé dès que possible.

Une règle d'exemple de sélection d'agent pour TypeScript a été ajoutée, et la règle git a également été convertie en sélection d'agent. Toutes les règles sont alignées sur les conventions du générateur de règles grandement améliorées.

## Mises à Jour Importantes Avant le 30 Mars 2025

## Mise à Niveau Massive - Lisez ceci pour la MEILLEURE expérience cursor à ce jour - cela va tout changer - 31 Mars 2025

### Correction Importante pour les Règles AutoSelect d'Agent

Grâce aux retours de la communauté autour de ce dépôt et dans les forums de cursor - une idée a émergé concernant le champ de description qui s'est avérée être un formidable coup de pouce pour la sélection automatique des règles par l'agent, devenant presque presque jamais instable. Des descriptions plus longues qui indiquent clairement les types de scénarios ou de contextes auxquels elles s'appliquent - c'était dans la dernière version de ce dépôt caché plus en détail dans le contexte qui a été brisé par les récentes améliorations d'optimisation de cursor pour ne considérer que la description pour la sélection de règles ! L'agent générateur de règles a été mis à jour pour prendre en charge cela, intégrant ce qui était le contexte dans le champ de description, l'optimisant davantage au point où l'agent devrait être vraiment idiot pour ne pas le sélectionner dans le bon scénario, ou beaucoup plus facile à corriger !

Toutes les règles d'exemple dans le dépôt ont été mises à jour - et un nouvel exemple de règle de sélection d'agent TypeScript a également été ajouté, que j'ai testé et confirmé qu'il se charge de manière fiable.

### Outils et Règles de Génération d'Agents Personnalisés Révolutionnaires - l'avenir des flux de travail est dans les onglets multiples d'agents personnalisés !

Nouveau dans le dépôt - fichier modes.json d'exemple pour définir vos agents personnalisés ainsi qu'un modèle et une règle pour vous aider à les créer. Le dépôt inclut maintenant dans xnotes un fichier custom-agents.md, un exemple de ce qui pourrait être utilisé dans une invite à cursor pour ensuite utiliser la règle et le modèle pour générer le modes.json ! Bien que non officiellement utilisé par cursor - le fichier sera similaire à ce qu'ils publieront bientôt, mais en attendant peut vous aider à créer les cursors en vous donnant les options à entrer dans l'interface graphique pour créer les agents personnalisés (assurez-vous d'activer cette fonctionnalité bêta actuelle dans les paramètres de cursor). Dès que la version sera disponible pour la prendre en charge dans cursor, cela sera mis à jour afin que la règle puisse ajouter ou mettre à jour le nouveau format une fois que j'aurai la nouvelle version qui la prend en charge dans les semaines à venir. Mais pour l'instant, c'est la meilleure option, et bien mieux que d'essayer de taper manuellement dans la petite fenêtre de l'interface graphique pour les instructions d'agent personnalisé. Consultez .cursor/modes.json pour les agents personnalisés que j'utilise (et que j'ajuste encore constamment).

À l'avenir, je commencerai à avoir moins de règles - par exemple, je n'utilise plus le flux de travail manuel car je parle plutôt à l'agent approprié dans un onglet qui a essentiellement le flux de travail intégré dans son ensemble d'instructions.

## Note Importante V 0.47+

- J'ai mis à jour le dépôt pour ajouter correctement .cursor/rules/\* au .cursorindexingignore - sans cela, vous rencontrerez beaucoup d'instabilité lorsque vous essayerez de modifier ou d'ajuster une règle existante ou de changer son type sans réindexer l'ensemble du projet. Cela fera une GRANDE différence.
