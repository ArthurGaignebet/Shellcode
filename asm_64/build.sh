#!/bin/bash

# Boucle sur tous les fichiers .s dans le répertoire courant
for file in *.s; do
    # Vérifie si le fichier existe
    if [ -f "$file" ]; then
        # Obtient le nom du fichier sans l'extension .s
        filename=$(basename -- "$file")
        filename_no_ext="${filename%.*}"

        # Assemble le fichier .s en utilisant nasm
        nasm -f elf64 "$file" -o "$filename_no_ext.o"

        # Vérifie si la compilation a réussi
        if [ $? -eq 0 ]; then
            echo "Compilation de $file terminée avec succès."
            # Lier le fichier objet avec ld si la compilation est réussie
            ld -m elf_x86_64 -o "$filename_no_ext" "$filename_no_ext.o"
            if [ $? -eq 0 ]; then
                echo "Liaison de $filename_no_ext terminée avec succès."
            else
                echo "Erreur lors de la liaison de $filename_no_ext."
            fi
        else
            echo "Erreur lors de la compilation de $file."
        fi
    fi
done

