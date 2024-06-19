## Ce qui compose Xcode
1. La barre de menu.
1. La barre de navigation.
2. À gauche, les navigateurs de fichier, source controle, recherche, et cætera.
3. À droite l'inspecteur, pour chaque élément (file inspector, hystory inspector, help inspector...). Jusqu'a 7 inspecteurs pour 'main.storyboard'.
4. Au milieu, le.s projet.s, les targets.
5. En bas, la console (log, terminal, print, brakpoint, erreur...)

Xcode est très configurable.  

Le fichier `.xcodeproj` permet à Xcode d'ouvrir d'exécuter le projet.

Le fichier '`AppDelegate.swift`' et le fichier d'où commence l'application. La délégation. Des fonctions (méthodes) contiennent des options.  
Cela concerne la fin du lancement de l'appli, le cycke de vie de l'appli (pour les nouvelles scènnes), si l'utilisateur supprime une session de scène (une ressources).  
Il est nécessairement accompagné de '`SceneDelegate`'. D'où la variable 'windoww', cela concerne la vue.  
Une fonction sert à connecté une scène, une gèrel les scène connectées, une pour celles devenue active, une désactivant la scène, une passant la scène au premier plan et une passant la scène en arrière-plan.  
Ces deux fichiers agissentÒ comme des contrôleurs.

Concernant les vues, le fichier '`LaunchScreen.storyboard`' est le splashscreen.  
'`Main.storyboard`'.