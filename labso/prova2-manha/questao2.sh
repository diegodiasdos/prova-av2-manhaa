#!/bin/bash


case "$file" in
    *.txt}
        echo "É um arquivo de texto."
        cat "$file"
        
    *.gif|*.jpg|*.png}
        echo "É uma figura."
        xloadimage "$file"
        
    *}
        echo "Não sei que arquivo é esse."
        
esac

