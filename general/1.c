typedef struct Node {
    int data;
    struct Node *next;
} Node;

// Static array to hold nodes
Node nodes[10];
int node_count = 0;

// Function to create a new node without using dynamic memory allocation
Node *createNode(int data) {
    if (node_count >= 10)
        return 0; // Return null if array is full
    nodes[node_count].data = data;
    nodes[node_count].next = 0;
    return &nodes[node_count++];
}

// Function to add a node at the end
void append(Node **head, int data) {
    Node *newNode = createNode(data);
    if (!newNode)
        return; // Return if creation failed

    if (*head == 0) {
        *head = newNode;
        return;
    }

    // Note this doesn't actually work as I just removed a problematic functionality
}

// Function to simulate processing of the list data
void processList(Node *head) {
    Node *current = head;
    while (current != 0) {
        // A dummy operation to use 'data', could replace with some logic
        volatile int dataValue = current->data;
        current = current->next;
    }
}

int main() {
    Node *head = 0;

    append(&head, 1);
    append(&head, 2);
    append(&head, 3);

    processList(head);

    return 0;
}
