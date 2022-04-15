//Rapport projet informatique   MORVANT Antoine

https://github.com/alegoa/ProjetMORVANT.git


cd ./12345

ls | wc -w

//Je trouve 9

./indice_suivant.py 3 9

indice => 05518

//Ensuite on cherche le nom de la machine, on utilise la commande :

hostname

Ce qui donne : DESKTOP-NDECHTV

Avec ./indice_suivant.py 4 DESKTOP-NDECHTV

//Je trouve 78988

Je sort du répertoire

cd ../../

//Je suis l'indice 4

mkdir indices-sauvés

cp indices/12345/indice indices-sauvés/indice2

cp indices/05518/indice indices-sauvés/indice3

mv indices-sauvés coffreindices

ls

//Ensuite il faut installer man

sudo apt install man

l'option -n empêche l'écrasement

./indice_suivant.py 5 -n

Je trouve 46116

cd indices/46116

cat indice

//Je suis l'indice 5

ls ~/proj/tresor_shell/images

ls

ls -a

ls -la

cd .cachette

ls -la

cat .machine

//Je trouve 717206

./indice_suivant.py 6 717206

//Je trouve 21545


//Je suis l'indice 6

echo coucou

echo "Ça fait 14 jours que je suis enfermé, j'suis seul" > cuisine.txt

ls > mon_répertoire.txt

echo $PATH

echo $HOME

./indice_suivant.py 7 /usr/local/sbin

// Je trouve 87268


//Je suis l'indice 7

tail images/girafe.jpg

//Je prends les derniers mots

./indice_suivant.py 8 allume éteint réunies nom

// Je trouve 34260

//Je suis l'indice 8

sudo apt install ispell

sudo cp ./toutpuissant.txt /usr/local

 ./indice_suivant.py 9 Antoine Morvant


//Indice 9

// Je trouve 66985

wc -w /usr/share/dict/words

// Cela donne 102774 /usr/share/dict/words

./indice_suivant.py 10 102774

//Je trouve 49581


//Je suis l'indice 10

grep -B 1 "koala" /usr/share/dict/words

// Je trouve knuckling

./indice_suivant.py 11 knuckling

// Je trouve 68631

//Indice 11

// Je crée un fichier avec les noms de fichiers à trier

ls -la /bin > so

// Puis je trie

sort -r -n -k 5 so

./indice_suivant.py 12 -r -n -k 5

// Je trouve 90602

//Indice 12

// Il faut trouver l'indice final

// J'observe que tout les faux indices ont l'air d'être les mêmes, et que tout les indices ont au moins le mot "indice" à l'interieur. Il 

est donc probable qu'en faisant une recherche récursive regex dans le dossier indices en cherchant les fichiers avec le mot "indice" à 

l'interieur, je tombe sur les fichiers indice réels uniquement, je pourrais alors y trouver le dernier fichier indice.

grep -rl 'indices' -e 'indice'

// Je tombe sur tous les fichiers indices que j'ai trouvé auparavant, avec en plus un nouveau fichier, celui du dossier 12072... c'est le 

dernier indice ! Joli dinosaure.