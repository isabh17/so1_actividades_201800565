#!/bin/bash

# Script para el Participante A

while true; do
    read -p "A: " message
    echo "$message" > pipe_from_A_to_B

    if [ "$message" == "exit" ]; then
        echo "Chat finalizado por el Participante A."
        break
    fi

    response=$(cat pipe_from_B_to_A)
    echo "B: $response"
done
