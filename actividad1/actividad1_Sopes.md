# Universidad de San Carlos de Guatemala
# Sistemas Operativos 1
# Actividad 1

INTEGRANTE 💁

-------------------------------------------
| Nombre:                     | Carné     |
| --------------------------- | --------- |
| María Isabel Masaya Córdova | 201800565 |
-------------------------------------------

## Investigar sobre los siguientes conceptos de Sistemas Operativos:
## Tipos de Kernel y sus diferencias:

## 1. Monolítico: 

En un kernel monolítico, todas las funciones del sistema operativo se ejecutan en el espacio del núcleo. Esto incluye la gestión de la memoria, la planificación del procesador, los controladores de dispositivos y otros servicios. Los sistemas basados en kernel monolítico son eficientes en cuanto a rendimiento, pero pueden ser menos flexibles y más propensos a fallos.

## 2. Microkernel:

En un kernel microkernel, solo las funciones esenciales del sistema operativo se ejecutan en el espacio del núcleo, mientras que servicios adicionales, como controladores de dispositivos y sistemas de archivos, se ejecutan en el espacio del usuario. Esto proporciona mayor modularidad y flexibilidad, pero puede tener un impacto en el rendimiento debido a la comunicación entre espacios de usuario y kernel.

## 3. Híbrido:

El kernel híbrido combina características de los kernels monolíticos y microkernels. Algunas funciones esenciales se ejecutan en el espacio del núcleo, mientras que otras se implementan como módulos que se pueden cargar y descargar dinámicamente. Esto busca equilibrar la eficiencia de los kernels monolíticos con la flexibilidad de los microkernels.

## User vs Kernel Mode:
## Modo Usuario (User Mode):

En el modo usuario, los programas de aplicación se ejecutan con restricciones y sin acceso directo al hardware o al sistema operativo. El código en modo usuario no tiene privilegios para realizar operaciones críticas del sistema.
Modo Kernel (Kernel Mode):
En el modo kernel, el código del núcleo del sistema operativo se ejecuta con privilegios elevados y tiene acceso directo al hardware y a recursos críticos del sistema. El modo kernel permite la ejecución de instrucciones privilegiadas y la gestión de recursos compartidos del sistema.

La transición entre modos (llamada cambio de modo) ocurre cuando se realiza una llamada al sistema (system call) desde el modo usuario. Durante la llamada al sistema, el procesador cambia al modo kernel para permitir que el sistema operativo realice operaciones privilegiadas en nombre del programa de usuario.

## Interrupciones vs Traps:

## Interrupciones (Interrupts):

Las interrupciones son eventos externos al procesador que requieren atención inmediata del sistema operativo. Pueden provenir de hardware, como una solicitud de entrada/salida (E/S), o de software, como un error. Cuando se produce una interrupción, el procesador suspende temporalmente la ejecución del programa actual, guarda su estado y salta a una rutina de manejo de interrupciones.

## Trampas (Traps):
Las trampas, también conocidas como excepciones, son eventos generados internamente por el procesador o el software. Pueden ser resultado de errores de programación, como una división por cero, o de instrucciones específicas que requieren atención del sistema operativo. Al igual que con las interrupciones, cuando se produce una trampa, el procesador salta a una rutina de manejo de trampas en el sistema operativo.

Tanto las interrupciones como las trampas son mecanismos utilizados por el sistema operativo para manejar eventos imprevistos o solicitudes de servicios especiales, pero difieren en su origen y propósito. Las interrupciones provienen principalmente de eventos externos, mientras que las trampas son generadas internamente.
