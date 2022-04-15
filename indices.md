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

### Indice 5 : explorer en détail ###

#### Lister sans se déplacer ####

La commande `ls` permet de lister le contenu d'un répertoire. Si vous tapez

    ls

sans paramètre, vous listez le contenu du répertoire courant. Mais vous pouvez
aussi lister le contenu d'un répertoire sans vous déplacer

    ls ~/proj/tresor_shell/images

permet ainsi d'obtenir le contenu du répertoire passé en paramètres.

#### Fichiers et dossiers cachés ####

Sous UNIX, les fichiers et répertoires dont le nom commence par un point sont
des fichiers cachés et ne sont pas visibles sauf si on le demande
explicitement. Taper

    ls -a

pour voir (aussi) les fichiers et répertoires cachés. Pour obtenir un affichage
détaillé de tous les fichiers, taper

    ls -al

ou encore

    ls -la

Pour plus de détails sur le fonctionnement de la commande `ls` et ses options,
vous pouvez consulter la page de manuel de `ls` : taper `man ls`

#### Trouver l'indice 6 ####

Dans le répertoire ~/proj/tresor_shell, il y a une *cachette*, que vous
devriez explorer. En particulier, cherchez-y un fichier machine. Vous
y trouverez l'indication vers le prochain indice.

Rappel : pour trouver l'indice suivant, tapez

    ./indice_suivant.py 6 [indication]

### Indice 6 : y a-t-il de l'écho ici ? ###

#### `echo` ####

Parfois, on veut que l'ordinateur répète les résultats d'une commande. Taper

    echo coucou
    
La chose la plus basique que la commande `echo` va faire est répéter ce que
vous avez tapé. 

#### Rediriger ####

Vous pouvez utiliser cela pour créer un petit fichier :

    echo "Ça fait 14 jours que je suis enfermé, j'suis seul" > cuisine.txt
    
Si vous regardez le contenu du fichier cuisine.txt, vous verrez exactement ce
que vous avez tapé. Le symbole `>` utilisé ici est appelé redirection. Il
redirige tout ce qui serait normalement affiché à l'écran dans un fichier. Vous
pouvez le tester avec d'autres commandes :

    ls > mon_répertoire.txt
    
Vous pouvez aussi utiliser `echo` pour afficher la valeur des variables
d'environnement :

    echo $PATH
    echo $HOME

Vous devriez comprendre le sens de la variable `HOME` à cette étape. 

#### Trouver l'indice 7 ####

La variable `PATH` dit à l'ordinateur où sont les programmes. Chaque chemin qui
peut contenir un programme est placé entre deux points. L'indication vers le
prochain indice est le premier chemin listé dans votre `PATH`.

### Indice 7 : de la tête à la queue ###

#### `head` ####

Si on demande d'afficher le contenu d'un long fichier avec `cat`, tout
s'affiche sans retour à la ligne et il est difficile de s'y retrouver.

La commande `head` permet d'afficher les 10 premières lignes d'un fichier
texte. Consultez la documentation de `head` pour trouver le paramètres qui
permet d'afficher uniquement les `n` dernières lignes.

Une commande analogue est `tail`, qui permet d'afficher les dernières
lignes d'un fichier.

#### Suivi d'un fichier ####

`tail` a l'option spéciale `-f` qui permet de surveiller un fichier. Au lieu
d'afficher les dernières lignes et quitter, `tail -f` met à jour l'affichage si
ce fichier est modifié par un autre processus.

C'est particulièrement utile pour des fichiers journaux. La commande suivante
va afficher les 10 dernières lignes de `var/adm/messages` et surveiller ses
modifications :

    tail -f /var/adm/messages

Pour interrompre la surveillance par `tail`, on peut appuyer sur `Ctrl` et `C`.

#### Trouver l'indice 8 ####

Le répertoires `images` contient des fichiers images en apparence tout à fait
normaux. Mais un message secret a été caché dans leur cinq dernières lignes.
L'indication vers l'indice 8 est formé à partir du dernier mot de
chacune de ces lignes pour le fichier `girafe.jpg`.
### Indice 8 : fais-moi un sandwich ###

https://xkcd.com/149/

#### `sudo` ####

Linux a le concept d'utilisateur `root`, qui est similaire à l'administrateur
Windows. Cet utilisateur est aussi appelé super utilisateur. Si vous voulez
faire une action en tant que root, mais rester authentifié(e) sous votre
compte, il y a la commande `sudo`. Son nom signifie "super-user-do".

#### Installer un logiciel ####

Vous pouvez avoir besoin d'un nouveau programme. Pour installer un logiciel
sous certaines versions de Linux (Debian et Ubuntu), on utilise la commande
`apt`. Sous d'autres versions (Fedora, CentOS), on utilise la commande `dnf`.

Par exemple, pour installer un dictionnaire, tapez la commande

    apt install ispell

Vous devriez avoir un message d'erreur demandant si vous êtes root. Cela
signifie que vous n'avez pas les permissions d'installer un logiciel. À la
place, essayez

    sudo apt install ispell
    
Maintenant, un dictionnaire devrait être installé.


#### Trouver l'indice 9 ####

Créez le fichier `toutpuissant.txt` qui contient le texte
    
    Je veux utiliser sudo.
    MP

où vous remplacez `MP` par vos initiales.
Déplacez le fichier `toutpuissant.txt` dans le répertoire `/usr/local`

Pour vérifier que tout s'est bien passé et obtenir l'indice suivant, utilisez
vos initiales comme indication.

Si vous n'avez pas les droits pour `sudo`, votre indication est `impossible`.

### Indice 9 : compter les mots ###

#### `wc` ####

Le programme `wc` (word count) permet de compter le nombre de lignes, mots
et/ou caractères dans un fichier

    wc README.md
    
Cela affichera le nombre de lignes, mots, caractères dans cet ordre. Si une
seule de ces informations vous suffit, vous pouvez utiliser `-l`, `-w` ou `-c`.

#### Trouver l'indice 10 ####

Vérifiez que vous avez le fichier `/usr/share/dict/words` installé. Sinon,
exécutez

    sudo apt install ispell

Maintenant, vous avez ce fichier qui sert de dictionnaire pour la correction
orthographique. L'indication est le nombre de mots dans ce dictionnaire
`/usr/share/dict/words`.

### Indice 10 : recherche ###

#### `grep` ####

Chercher à l'intérieur de fichiers est aussi utile. Essayer

    grep secret README.md

Cela affichera toutes les lignes qui contiennent le mot "secret". `grep` est
l'acronyme de "GNU Regular Expression Parsing". GNU est une communauté qui
publie des logiciels libres (dont la source est publique) et gratuits. Une
expression régulière est un motif de texte. Dans ce cas, notre expression
régulière est uniquement "secret", et `grep` trouvera uniquement les
correspondances exactes. Les expressions régulières peuvent être plus
compliquées. Par exemple,

    grep m.n README.md

trouvera toutes les lignes qui contiennent les lettres m et n séparées
uniquement d'un seul caractère. Consultez la page de manuel pour découvrir de
nombreuses fonctionnalités intéressantes de `grep`.

#### Trouver l'indice 11 ####

L'indication suivante est le mot qui apparaît avant "koala" dans
`/usr/share/dict/words`. Il existe une option spécifique de `grep` qui rend
cette recherche facile.

### Indice 11 : Mario ###

#### Transmettre l'information dans un tuyau ####

De nombreuses commandes vont afficher leur résultat. On dit que c'est la sortie
standard (standard output) ou `stdout`. Nous avons vu précédemment qu'on peut
rediriger la sortie standard vers un fichier (avec `>`). Il y a aussi l'entrée
standard (standard input) ou `stdin`, que l'on peut manipuler avec `<`.

Par exemple, `cat < README.md` est équivalent à `cat README.md`. Mais entrée et
sortie standard peuvent être reliées à l'aide d'un tuyau (pipe en anglais),
avec `|`. Par exemple, on peut compter le nombre de fichiers et répertoires
dans un dossier ainsi :

    ls | wc -w

Cela revient à prendre la sortie de `ls` et à l'utiliser comme entrée de `wc`.
Un autre example :

    grep ^sand /usr/share/dict/words | wc -l

va afficher le nombre de mots qui commencent par "sand". Le symbole accent
circonflexe `^` est une expression régulière qui signifie "débute par". On peut
aussi utiliser `$` pour "termine par".

#### Trier ####

Il peut être utile de trier des données dans l'ordre alphabétique. Notons que
le fichier dictionnaire est déjà trié. On peut créer notre propre copie non
triée ainsi

    sort -R /usr/share/dict/words > random_words

Maintenant, on peut `sort random_words` pour obtenir l'ordre alphabétique de
nouveau, ou `sort -r random_words` pour l'ordre inverse de l'ordre
alphabétique. 

#### Trouver l'indice 12 ####


Utiliser la commande `ls -la /bin` pour obtenir une grande liste de fichiers.
La 5e colonne dans cette liste est la taille des fichiers en octets. Trouver
les options de `sort` pour afficher la liste de ces fichiers triés du plus
grand au plus petit (par ordre décroissant).

Ces options forment votre indication. Par exemple, si votre commande était
`sort -a -b -c`, alors votre indication serait

    ./indice_suivant.py 12 -a -b -c
    
### Indice 12 : Le défi final ###

#### Trouver l'indice final 13 ####

En utilisant tout ce que vous avez appris pour l'instant et le fait que les
vrais indices sont différents des faux indices, trouver l'indice final !

