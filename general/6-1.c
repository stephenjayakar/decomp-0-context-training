#define MAX_BANKS 100

typedef struct {
    int id;
    double balance;
} Bank;

void f1(Bank banks[], int settlements[][MAX_BANKS], int num_banks) {
    int i, j;
    double net_transfer;

    for (i = 0; i < num_banks; i++) {
        for (j = 0; j < num_banks; j++) {
            if (i != j) {
                net_transfer = settlements[i][j] - settlements[j][i];
                banks[i].balance -= net_transfer;
                banks[j].balance += net_transfer;
                settlements[i][j] = 0;
                settlements[j][i] = 0;
            }
        }
    }
}

void f2(Bank banks[], int num_banks, void (*print_func)(int, double)) {
    int i;
    for (i = 0; i < num_banks; i++) {
        print_func(banks[i].id, banks[i].balance);
    }
}
