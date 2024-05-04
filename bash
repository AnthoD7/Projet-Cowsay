Projet Cowsay

1. Préliminaires :

cowsay "Bonjour" -> affiche bonjour
cowsay -e ^^ "Bonjour" -> change les yeux et affiche bonjour

2. Bash :

cow_kindergarten.sh :
#!/bin/bash

# Boucle de 1 à 10
for i in {1..10}; do
    # Affiche le chiffre actuel avec cowsay
    cowsay "$i"
    # Pause d'une seconde
    sleep 1
done

#la vache tire la langue
cowsay -T "UU" " "

cow_primaryschool.sh :
#!/bin/bash
n=$1
# Boucle de 1 à 10
for ((i = 1; i <= n; i++)); do
    # Affiche le chiffre actuel avec cowsay
    cowsay "$i"
    # Pause d'une seconde
    sleep 1
done

#la vache tire la langue
cowsay -T "UU" " "

cow_highschool.sh :
#!/bin/bash
n=$1
# Boucle de 1 à 10
for ((i = 1; i <= n; i++)); do
    val=$((i * i))
    # Affiche le chiffre actuel avec cowsay
    cowsay "$val"
    # Pause d'une seconde
    sleep 1
done

#la vache tire la langue
cowsay -T "UU" " "

cow_college.sh :
#!/bin/bash
n=$1
# Définition de la suite de Fibonacci jusqu'à "n"
fibonacci=(0 1)
f=1
while [ $f -le $n ]; do
    cowsay "$f"
    sleep 1
    suivant=$(( ${fibonacci[-1]} + ${fibonacci[-2]} ))
    fibonacci+=( $suivant )
    f=$suivant
done

#la vache tire la langue
cowsay -T "UU" " "

cow_university.sh :
#!/bin/bash

n=$1

# Fonction pour déterminer les nombres premiers jusqu'à n
nb_premier() {
    local limite=$1
    local i j
    local -a premiers

    # Initialisation du tableau à vrai (true)
    for ((i=2; i<=limite; i++)); do
        premiers[$i]=true
    done

    # Application du crible d'Eratosthène
    for ((i=2; i*i<=limite; i++)); do
        if [ "${premiers[$i]}" = true ]; then
            for ((j=i*i; j<=limite; j+=i)); do
                premiers[$j]=false
            done
        fi
    done

    # Affichage des nombres premiers avec cowsay
    for ((i=2; i<=limite; i++)); do
        if [ "${premiers[$i]}" = true ]; then
            echo $i | cowsay
            sleep 1
        fi
    done
}

# Appel de la fonction pour obtenir les nombres premiers jusqu'à n
nb_premier $n

#la vache tire la langue
cowsay -T "UU" " "
