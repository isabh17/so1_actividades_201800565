#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

void* thread_function(void* arg) {
    printf("Hilo creado.\n");
    return NULL;
}

int main() {
    pid_t pid;
    pthread_t tid;
    int i;
    pid = fork();
    if (pid == 0) { /* child process */
        fork();
        pthread_create(&tid, NULL, thread_function, NULL);
    }
    fork();

    printf("Proceso completado.\n");
    return 0;
}
