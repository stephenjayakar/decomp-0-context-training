extern void* malloc(int);
extern void free(void *);

typedef struct Node {
  int key;
  struct Node* left;
  struct Node* right;
  int height;
} Node;

static int max(int a, int b) {
  return (a > b) ? a : b;
}

static int height(Node* n) {
  return (n == 0) ? 0 : n->height;
}

static Node* newNode(int key) {
  Node* node = (Node*)malloc(sizeof(Node));
  node->key = key;
  node->left = 0;
  node->right = 0;
  node->height = 1;
  return node;
}

static Node* rightRotate(Node* y) {
  Node* x = y->left;
  Node* T2 = x->right;

  x->right = y;
  y->left = T2;

  y->height = max(height(y->left), height(y->right)) + 1;
  x->height = max(height(x->left), height(x->right)) + 1;
  return x;
}

static Node* leftRotate(Node* x) {
  Node* y = x->right;
  Node* T2 = y->left;

  y->left = x;
  x->right = T2;

  x->height = max(height(x->left), height(x->right)) + 1;
  y->height = max(height(y->left), height(y->right)) + 1;
  return y;
}

static int getBalance(Node* n) {
  return (n == 0) ? 0 : height(n->left) - height(n->right);
}

static Node* insert(Node* node, int key) {
  int balance = 0;
  if (node == 0) {
    return newNode(key);
  }
    
  if (key < node->key) {
    node->left = insert(node->left, key);
  } else if (key > node->key) {
    node->right = insert(node->right, key);
  } else {
    return node;
  }

  node->height = 1 + max(height(node->left), height(node->right));
  balance = getBalance(node);

  if (balance > 1 && key < node->left->key) {
    return rightRotate(node);
  }
  if (balance < -1 && key > node->right->key) {
    return leftRotate(node);
  }
  if (balance > 1 && key > node->left->key) {
    node->left = leftRotate(node->left);
    return rightRotate(node);
  }
  if (balance < -1 && key < node->right->key) {
    node->right = rightRotate(node->right);
    return leftRotate(node);
  }

  return node;
}

static Node* minValueNode(Node* node) {
  Node* current = node;
  while (current->left != 0) {
    current = current->left;
  }
  return current;
}

static Node* deleteNode(Node* root, int key) {
  int balance = 0;
  if (root == 0) {
    return root;
  }

  if (key < root->key) {
    root->left = deleteNode(root->left, key);
  } else if (key > root->key) {
    root->right = deleteNode(root->right, key);
  } else {
    Node* temp;
    if (root->left == 0 || root->right == 0) {
      temp = root->left ? root->left : root->right;
      if (temp == 0) {
        temp = root;
        root = 0;
      } else {
        *root = *temp;
      }
      free(temp);
    } else {
      temp = minValueNode(root->right);
      root->key = temp->key;
      root->right = deleteNode(root->right, temp->key);
    }
  }

  if (root == 0) {
    return root;
  }

  root->height = 1 + max(height(root->left), height(root->right));
  balance = getBalance(root);

  if (balance > 1 && getBalance(root->left) >= 0) {
    return rightRotate(root);
  }
  if (balance > 1 && getBalance(root->left) < 0) {
    root->left = leftRotate(root->left);
    return rightRotate(root);
  }
  if (balance < -1 && getBalance(root->right) <= 0) {
    return leftRotate(root);
  }
  if (balance < -1 && getBalance(root->right) > 0) {
    root->right = rightRotate(root->right);
    return leftRotate(root);
  }

  return root;
}

static Node* search(Node* root, int key) {
  if (root == 0 || root->key == key) {
    return root;
  }
  if (root->key < key) {
    return search(root->right, key);
  }
  return search(root->left, key);
}
