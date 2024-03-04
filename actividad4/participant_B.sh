#!/bin/bash

# Script para el Participante B

while true; do
    response=$(cat pipe_from_A_to_B)
    echo "A: $response"

    if [ "$response" == "exit" ]; then
        echo "Chat finalizado por el Participante B."
        break
    fi

    read -p "B: " message
    echo "$message" > pipe_from_B_to_A
done
