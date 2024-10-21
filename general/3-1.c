typedef struct {
    int id;
    int execution_time;
    int remaining_time;
} Process;

void f1(Process processes[], int n, int quantum, int *order, int *order_len) {
    int time = 0, i;
    int done, count = 0;
    *order_len = 0;

    for (i = 0; i < n; i++) {
        processes[i].remaining_time = processes[i].execution_time;
    }

    while (1) {
        done = 1;
        for (i = 0; i < n; i++) {
            if (processes[i].remaining_time > 0) {
                done = 0;
                if (processes[i].remaining_time > quantum) {
                    time += quantum;
                    processes[i].remaining_time -= quantum;
                } else {
                    time += processes[i].remaining_time;
                    processes[i].remaining_time = 0;
                }
                order[count++] = processes[i].id;
            }
        }
        if (done) {
            break;
        }
    }
    *order_len = count;
}
