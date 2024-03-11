# Información sobre el programa

## Procesos y hilos

### a) ¿Cuántos procesos únicos son creados?

El número total de procesos únicos creados es 6. Esto se debe a que hay tres llamadas a `fork()`, cada una duplicando el proceso actual. El proceso original crea un proceso hijo, que a su vez crea otro proceso hijo. Luego, el proceso original y el primer proceso hijo crean un tercer proceso hijo. En total, se crean 6 procesos únicos.

### b) ¿Cuántos hilos únicos son creados?

Se crea un único hilo en el programa. Este hilo se crea dentro del primer proceso hijo utilizando la función `pthread_create()`. Los otros procesos no crean hilos, solo duplican el proceso original o uno de sus hijos.