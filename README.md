# Day 28

## Présentation du programme:
Le programme a été fait par Quentin, Abdel, Alexandra & Selma. 

#### Lien Heroku : https://obscure-reaches-46415.herokuapp.com/

## Mission

Faire une landing page du site https://www.thehackingproject.org , et promouvoir ce dernier.


## Les étapes 


#### La landing page ✅

##### Pour créer notre landing page, nous avons repris une template bootstrap en suivant les étapes suivantes:

Dans le fichier Gemfile:

```
gem 'frontend-generators'
```

Dans le fichier Rakefile:

```    
require "frontend_generators"
load 'tasks/add_assets.rake'
```

Pour ajouter le fichier Bootstrap à l'app Rails, il faut entrer dans la commande

``` 
bundle exec rake add_assets:bootstrap
```

Dans  le fichier application.css:

```
*= require bootstrap
```

Dans  le fichier  application.js:

```
//= require bootstrap 
 ```


##### Installation du Bootstrap creative 

Dans le terminal

``` 
bundle exec rake add_assets:creative
```

Dans le fichier routes.rb:

```
root 'creatives#index'
```

Dans le fichier config/initializers/assets.rb

```
Rails.application.config.assets.precompile += %w( creative/manifest.jscreative/manifest.css )
````


- Theme intégré : Bootstrap creative

#### Le call to action :white_check_mark:

- Inscription à la newsletter

#### L'acquisition :white_check_mark:

#### Analyse des metrics :white_check_mark:

Les metrics à suivre sont : 
- Nombre de visiteurs
- Nombre d'inscrits à la newsletter
- Taux d'ouverture sur l'email
- Taux de clic sur le bouton de l'email
- Taux de personnes ayant payés la caution

#### Le rendu :white_check_mark:

https://obscure-reaches-46415.herokuapp.com/

#### Les outils :white_check_mark:

- Mailchimp pour l'inscription à la newsletter : 
List THP avec un email qui part dès qu'une personne inscrit son email
- <a href="https://github.com/alexandradlg/bot_twitter">Bot twitter :</a></br>
Récupération de comptes utilisateurs ayant un intéret pour des sujets tels que la tech, l'éduction, les étudiants, etc. Follow de ces utilisateurs et envoi d'un tweet avec le lien de la landing page


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