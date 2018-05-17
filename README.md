# Day 4 / Week 7

## Présentation du programme:
Le programme a été fait par Quentin, Abdel, Alexandra & Selma. 

#### Liens Heroku des 3 landing pages :
##### https://team-atlantide-thp.herokuapp.com/1
##### https://team-atlantide-thp.herokuapp.com/2 
##### https://team-atlantide-thp.herokuapp.com/3

## Mission

### Pimper le projet des LPs pour le mettre en production

Tu vas améliorer le projet des landing pages et constater que tu commences à avoir un niveau plus que convenable en Rails !

Ce projet sera la version en production du projet des landing pages, et sera une étape importante pour ton apprentissage à Rails : à partir de là, il te manquera une petite semaine de JavaScript pour dynamiser tes pages, et tu sauras refaire sans grand soucis un Airbnb. En effet, tu sais créer des modèles, jouer avec eux en base, leur appliquer des services, mettre en production une application, et même proposer des options de pro indispensables pour toute application qui se respecte (template pas dégueu, emailer).


## Les étapes 


### 1. Introduction et Mise en forme ✅

* Intégration d'une template WrapBootstrap 
* Création de 3 LPs (L'une ciblée sur une ville  1.Bordeaux, l'une sur un domaine particlier 2. Startups, et l'une 3.visant les étudiants)
* Service mailer & Newsletter 
* Heroku scheduler 

### 2. Les emails ✅

* Utilisation de mailer avec un model/controller User/s
* Message demandant de checker sa boîte de réception après avoir entré son email 
* Email envoyé avec un lien pour confirmer son inscrption à la newsletter 
* Second e-mail envoyé toute les semaines, avec un messsage d'accueil et un lien vers https://www.thehackingproject.org/ 
* Possibilité de se désabonner de la newletter 

### 3. Opérations markting ✅

* Bot Twitter qui envoie des tweets, avec 3 search_terms spécifiques aux cibles des 3 LPs


* Bot Messenger avec page Facebook https://www.facebook.com/thpatlantide/
 et message d'accueil avec un lien qui redirige vers la LP qui cible les étudiants. 


### 4. Le Tracking ✅

Lps branchées à l'outil d'analitycs Amplitude, le script est sous forme de partial dans app/views/layouts
Les metrics à suivre sont : 
- Nombre de visiteurs
- Nombre d'inscrits à la newsletter
- Taux d'ouverture sur l'email
- Taux de clic sur le bouton de l'email
- Taux de personnes ayant payés la caution


## Installation

Une fois le repo cloné, fais ces commandes pour installer les gems et lancer le projet sur ton serveur local :


```
bundle install 
```

```
rails db:migrate 
```

```
rails s
```

## Pré-requis

Projet libre de droit et d'accès à la lecture/écriture. Pour pouvoir visualiser le projet, un simple navigateur suffit.

```
Firefox, Safari, Chrome, Internet Explorer 8, ...
```
## Contributors

* Quentin : https://github.com/QUB-SPG

* Abdel : https://github.com/aitbali

* Alexandra : https://github.com/alexandradlg

* Selma : https://github.com/Asakab

## Nos Slack

* Quentin : @Quentin

* Abdel : @Abdel

* Alexandra : @Alex

* Selma : @Asak