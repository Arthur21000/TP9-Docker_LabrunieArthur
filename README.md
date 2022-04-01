Le TP 9 consiste à build une image docker via un docker file via les github actions.

Les actions sont réalisé grace au workflow.
Elles vont check le tag qui est push et tout simplement rebuild une image docker avec le dockerfile present dans le push de ce tag, et ensuite mettre l'image sur le repertoir DockerHub et mettre à jour la version latest.

Pour ce faire il suffit simplement de copié le git dans un repertoire, changer le dockerfile comme vous le souhaitez puis repush les modification en modifiant le tag.

Exemple: 
  - git commit -m wip
  - git tag 1.2.0
  - git push --tags

Ensuite aller dans l'onglet dans Actions sur github : 
![image](https://user-images.githubusercontent.com/56296245/161261806-068c25a2-4102-41a1-9c66-b38cc27409d4.png)

Une fois les actions terminer aller dans le repertoire : https://hub.docker.com/repository/docker/zemmour2022/tp9-docker_labrunie-arthur
![image](https://user-images.githubusercontent.com/56296245/161261413-3e1b7165-a30a-47a5-b28b-d8157b0045d2.png)

Il y a 3 version pour l'instant : 
  - 1.0.0 : image simple d'alpine
  - 1.1.0 : image alpine avec BASH installé
  - 1.2.0 : image alpine avec un script disant bonjour au lancement du container et l'utlisateur root utilise pour defaut le shell BASH
