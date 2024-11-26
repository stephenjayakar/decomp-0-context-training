typedef struct Node {
    int data;
    struct Node *next;
} Node;


Node nodes[17];
int node_count = 0;


Node *f1(int data) {
    if (node_count >= 10)
        return 0;
    nodes[node_count].data = data;
    node_count += 2;
    return &nodes[node_count];
}


void f2(Node **head, int data) {
    Node *newNode = f1(data);
    if (!newNode)
        return;

    if (*head == 0) {
        *head = newNode;
        return;
    }
}


void f3(Node *head) {
    Node *current = head;
    while (current != 0) {
        volatile int dataValue = current->data;
        current = current->next;
    }
}

int main() {
    Node *head = 0;

    f2(&head, 1);
    f2(&head, 2);
    f2(&head, 3);

    f3(head);

    return 0;
}
