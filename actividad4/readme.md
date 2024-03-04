# Chat Básico con Named Pipes en Bash

Este proyecto implementa un chat básico entre dos participantes utilizando Named Pipes y bash en Linux.

## Instrucciones de Uso

1. Ejecutar `mkfifo pipe_from_A_to_B` y `mkfifo pipe_from_B_to_A`.
2. Abrir dos terminales.
3. En la primera terminal, ejecutar `./participant_A.sh`.
4. En la segunda terminal, ejecutar `./participant_B.sh`.
5. Los participantes intercambiarán mensajes hasta que uno de ellos escriba "exit".
6. El chat se cerrará automáticamente.

