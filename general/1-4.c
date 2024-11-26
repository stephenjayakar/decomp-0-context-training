typedef struct Node {
    int data;
    struct Node *next;
} Node;

Node nodes[10];
int node_count = 0;

extern 

int main() {
    Node *head = 0;

    append(&head, 1);
    append(&head, 2);
    append(&head, 3);

    processList(head);

    return 0;
}
