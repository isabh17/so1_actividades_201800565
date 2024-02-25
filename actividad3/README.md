# Saludo y Fecha Actual Infinitos

Este servicio de systemd ejecuta un script que imprime un saludo y la fecha actual infinitamente.

## Instalación

1. Clona este repositorio o descarga el script `saludo_script.sh`.
2. Modifica el archivo `saludo.service` para reflejar la ruta completa del script.
3. Mueve el archivo `saludo.service` a `/etc/systemd/system/`.
4. Habilita y inicia el servicio:

   ```bash
   sudo systemctl enable saludo.service
   sudo systemctl start saludo.service
