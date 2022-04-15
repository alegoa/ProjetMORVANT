### Indice 2 : panorama ###

#### `pwd` ####

Que faire si on se perd et qu'on doit savoir où on est ? Tapez simplement `pwd`
(print working directory). Cela devrait afficher quelque chose comme

    /home/user/tresor-shell/indices/12345

Nous sommes à cinq répertoires de profondeur, dans un répertoire nommé
`12345`.

#### `cd` ####

Changer de répertoire est très utile, mais ne vous y perdez pas ! Nous avons
déjà vu que l'on peut remonter d'un niveau (`cd ..`) ou descendre dans un
répertoire (`cd [dir]`). Vous pouvez monter ou descendre d'un nombre quelconque
de répertoire en une seule commande comme celle-ci (cette commande précise ne
fonctionnera pas) :

    cd ../../../un/deux/

Vous navigueriez de trois répertoires vers le haut par rapport à l'endroit où
vous êtes, puis descendriez dans le répertoire un, puis dans le répertoire
deux. C'est ce qu'on appelle un chemin relatif : l'endroit où vous arrivez
dépend de l'endroit dont vous partez. L'autre façon de changer de répertoire
est par un chemin absolu. Essayez ceci :

    cd /

Observez son contenu. Ce répertoire est appelé la racine. Vous pouvez explorer
le système de fichiers entier à partir d'ici, en utilisant seulement `ls` et
`cd`.

#### Trouver l'indice 3 ####

Pour trouver l'indice suivant, déplacez vous dans le répertoire `/usr` et
comptez le nombre de sous-répertoires et fichiers. C'est l'indication qui mène
vers votre prochain indice. Déplacez-vous dans le répertoire tresor-shell,
et tapez

    ./indice_suivant.py [numéro indice suivant] [indication]

Par exemple, s'il y avait 5 sous-répertoires, il faudrait taper

    ./indice_suivant.py 3 5

comme nous voulons trouver l'indice 3 et que notre indication est 5.
L'emplacement de notre prochain indice devrait alors être affiché. Si vous
vous trompez pour l'indication, un mauvais emplacement d'indice sera affiché.
C'est un exemple de ce qu'on appelle GIGO (Garbage In, Garbage Out) : des
entrées absurdes provoquent des sorties absurdes ou déchets.

Suggestion : vous pouvez utiliser plusieurs fenêtres de terminal.

#### `less` ####

`less` est un programme qui vous permet de visualiser le contenu de fichiers
dans le terminal. À la différence de `cat`, vous pouvez faire défiler le
contenu du fichier à l'aide des flèches haut, bas, des touches de défilement
(page down, page up). Déplacez-vous vers l'indice 3, puis tapez `less indice`.
Le nom `less` est un jeu de mot avec `more`, un programme similaire. En fait,
`more` est plus ancien et a été nommé ainsi parce qu'il permettait de voir plus
de texte en appuyant sur entrée. `less` permet de revenir en arrière et donc de
faire comme `more` à l'envers.
### Indice 3 : Humains vs. Machines ###

#### Binaire vs. Texte ####

Il y a deux types basiques de fichiers : les fichiers binaires et les fichiers
textes. Le texte peut être lu à la fois par les humains et les ordinateurs. Par
exemple, le fichier que vous lisez en ce moment est un fichier texte.

Le binaire est un système de numération qui utilise uniquement 0 et 1 comme
chiffres. Par exemple, 42 est représenté par 101010 en binaire. Chaque chiffre
est appelé un "bit" (raccourci pour binary digit). Huit bits forment un octet
(byte en anglais). Il y a 256 octets possibles (2^8). L'octet est une unité de
mesure fondamentale en informatique (par exemple, les tailles de fichiers sont
exprimées en octets). Les ordinateurs utilisent une écriture courte pour chaque
octet appelée "hexadécimal" (ou "hexa" en encore plus court). En hexadécimal,
il y a seize chiffres, les chiffres habituels de 0 à 9, et aussi les lettres de
A à F. A est égal à 10, B à 11, et ainsi de suite. Parfois, on écrit `0x`
devant un nombre hexadécimal pour indiquer que l'on fait référence à un nombre
hexadécimal : 42 est `0x2A`.

Si vous regardez le contenu d'un fichier et vous voyez des caractères
"illisibles", vous êtes probablement en train de regarder un fichier binaire.
Son contenu ne vous est pas destiné, mais il s'adresse plutôt à l'ordinateur.

#### `/bin` ####

Vous pouvez toujours trouver des fichiers binaires dans un système Unix dans
le répertoire `/bin`. Ces binaires sont des programmes : si vous listez le
contenu de `/bin`, vous reconnaîtrez probablement certains d'entre eux (en
particulier `ls` lui-même). C'est aussi une façon pratique d'obtenir une liste
des commandes disponibles.

Si vous voulez voir le contenu d'un fichier binaire, vous pouvez utiliser `cat`
ou `less`. Vous pouvez même tester `cat cat` ou `less less`. Sur certains
systèmes sous Unix, vous pouvez voir la version hexadécimale avec `hexdump`.


#### `/etc` ####

Ce répertoire est nommé en référence à la locution latine *et cetera*. Il
contient de nombreux fichiers textes (et des fichiers binaires) qui sont
utilisés pour configurer le système. Humains comme ordinateurs peuvent lire ces
fichiers pour découvrir comment configurer le système.

Par exemple, allez voir le fichier `/etc/os-release`. Il donne des informations
sur la version de votre système d'exploitation.

#### Trouver l'indice 4 ####

Votre indication vers l'indice 4 est le nom de votre ordinateur. Vous pouvez
le trouver de plusieurs façons différentes et probablement sans chercher trop
loin. Rappel : pour trouver l'indice suivant, tapez

    ./indice_suivant.py [numéro indice suivant] [indication]

### Indice 4 : les grands mouvements ###

#### Organisons ####

Nous avons exploré les répertoires qui existent déjà sur l'ordinateur. Mais
qu'en est-il si nous voulons créer nos propres répertoires et fichiers ? Pour
commencer, créons un nouveau répertoire.

D'abord, allons dans le répertoire de la chasse au trésor :

    cd ~/proj/tresor_shell

Ensuite, exécutons

    mkdir indices-sauvés

Nous allons sauvegarder tous les indices trouvés dans un répertoire séparé créé
au moyen de la commande `mkdir` (make directory). Comme le fichier README est
l'indice 1, nous n'avons pas à nous en préoccuper. Si vous avez noté les
emplacements des indices, la partie suivante devrait être facile.

#### Recopions ####

Copions tous les indices que nous avons trouvés dans le répertoire de
sauvegarde :

    cp indices/12345/indice indices-sauvés/indice2
    cp indices/5518/indice indices-sauvés/indice3

Cela copie (`cp`) chaque indice dans le nouveau répertoire et leur donne de
nouveaux noms. Si nous avions seulement exécuté

    cp indices/12345/indice indices-sauvés/
    cp indices/5518/indice indices-sauvés/

alors le second fichier aurait écrasé le premier, parce qu'ils portent le même
nom.

#### Gardons nos options ouvertes ####

Les commandes Unix ont souvent des options qui changent leur comportement. Par
exemple, comparer `ls -l` à l'ordinaire `ls`. Ici, `-l` est une option. On peut
grouper des options ensemble ainsi :

    ls -lahS

La meilleure façon de découvrir les options est la page de manuel.

#### Déplaçons ####

Disons que nous n'aimons pas le nom du répertoire `indices-sauvés`. On peut le
déplacer (renommer) avec `mv` :

    mv indices-sauvés [choisir un nouveau nom]

Exécutons alors `ls` pour voir les résultats du déplacement. Prudence avec
`mv` : on peut écraser un répertoire / fichier qui existe déjà ! 

#### Trouver l'indice 5 ####

Lire la page de `mv` et trouver une option qui empêche l'écrasement. Cette
option est votre prochaine indication.

