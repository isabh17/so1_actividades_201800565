# Universidad de San Carlos de Guatemala
## María Isabel Masaya Córdova
### 201800565

## Scheduling o planificación de procesos

El Completely Fair Scheduler es el algoritmo de planificación de procesos predeterminado en el núcleo de Linux desde la versión 2.6.23. Su objetivo principal es asignar tiempo de CPU de manera justa entre todos los procesos en ejecución en el sistema. A diferencia de algunos de sus predecesores, como el O(1) scheduler, el CFS no asigna un quantum de tiempo de CPU fijo a cada proceso. En cambio, se basa en el concepto de proporcionalidad: cada proceso obtiene una "cuota" de tiempo de CPU en función de su peso relativo.

Aquí hay algunas características y principios clave del CFS:

1. **Modelo de Tiempo de Ejecución Justo:** El CFS intenta garantizar que todos los procesos reciban una cantidad justa de tiempo de CPU, independientemente de su prioridad o carga de trabajo. Este enfoque busca evitar la inanición de procesos de baja prioridad.

2. **Entorno de Ejecución Virtual:** El CFS ve al sistema como un entorno de ejecución virtual continuo y trata de repartir el tiempo de CPU en función del porcentaje de tiempo real en ejecución que cada proceso debería recibir.

3. **Cola de Programación Basada en Árboles Rojos-Negros:** El CFS mantiene una estructura de datos de tipo árbol rojo-negro para organizar los procesos en una cola de planificación. Esto permite una búsqueda eficiente del proceso con la menor cantidad de tiempo de CPU utilizado.

4. **Selección de Proceso más Justa (Best Fit):** Cuando llega el momento de elegir qué proceso se ejecutará a continuación, el CFS selecciona aquel que tenga la menor cantidad de tiempo de CPU utilizado hasta el momento, asegurando así una distribución más equitativa de los recursos.

5. **Incremento Dinámico de Prioridades:** Para garantizar una distribución justa del tiempo de CPU, el CFS puede ajustar dinámicamente las prioridades de los procesos. Esto significa que los procesos que utilizan menos tiempo de CPU recibirán un impulso en su prioridad, mientras que los que utilizan más tiempo de CPU tendrán su prioridad reducida.


