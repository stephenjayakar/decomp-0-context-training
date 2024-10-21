extern void* malloc(int);
extern void free(void *);

typedef struct Node {
  int key;
  struct Node* left;
  struct Node* right;
  int height;
} Node;

static int f1(int a, int b) {
  return (a > b) ? a : b;
}

static int f2(Node* n) {
  return (n == 0) ? 0 : n->height;
}

static Node* f3(int key) {
  Node* node = (Node*)malloc(sizeof(Node));
  node->key = key;
  node->left = 0;
  node->right = 0;
  node->height = 1;
  return node;
}

static Node* f4(Node* y) {
  Node* x = y->left;
  Node* T2 = x->right;

  x->right = y;
  y->left = T2;

  y->height = f1(f2(y->left), f2(y->right)) + 1;
  x->height = f1(f2(x->left), f2(x->right)) + 1;
  return x;
}

static Node* f5(Node* x) {
  Node* y = x->right;
  Node* T2 = y->left;

  y->left = x;
  x->right = T2;

  x->height = f1(f2(x->left), f2(x->right)) + 1;
  y->height = f1(f2(y->left), f2(y->right)) + 1;
  return y;
}

static int f6(Node* n) {
  return (n == 0) ? 0 : f2(n->left) - f2(n->right);
}

static Node* f7(Node* node, int key) {
  int balance = 0;
  if (node == 0) {
    return f3(key);
  }
    
  if (key < node->key) {
    node->left = f7(node->left, key);
  } else if (key > node->key) {
    node->right = f7(node->right, key);
  } else {
    return node;
  }

  node->height = 1 + f1(f2(node->left), f2(node->right));
  balance = f6(node);

  if (balance > 1 && key < node->left->key) {
    return f4(node);
  }
  if (balance < -1 && key > node->right->key) {
    return f5(node);
  }
  if (balance > 1 && key > node->left->key) {
    node->left = f5(node->left);
    return f4(node);
  }
  if (balance < -1 && key < node->right->key) {
    node->right = f4(node->right);
    return f5(node);
  }

  return node;
}

static Node* f8(Node* node) {
  Node* current = node;
  while (current->left != 0) {
    current = current->left;
  }
  return current;
}

static Node* f9(Node* root, int key) {
  int balance = 0;
  if (root == 0) {
    return root;
  }

  if (key < root->key) {
    root->left = f9(root->left, key);
  } else if (key > root->key) {
    root->right = f9(root->right, key);
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
      temp = f8(root->right);
      root->key = temp->key;
      root->right = f9(root->right, temp->key);
    }
  }

  if (root == 0) {
    return root;
  }

  root->height = 1 + f1(f2(root->left), f2(root->right));
  balance = f6(root);

  if (balance > 1 && f6(root->left) >= 0) {
    return f4(root);
  }
  if (balance > 1 && f6(root->left) < 0) {
    root->left = f5(root->left);
    return f4(root);
  }
  if (balance < -1 && f6(root->right) <= 0) {
    return f5(root);
  }
  if (balance < -1 && f6(root->right) > 0) {
    root->right = f4(root->right);
    return f5(root);
  }

  return root;
}

static Node* f10(Node* root, int key) {
  if (root == 0 || root->key == key) {
    return root;
  }
  if (root->key < key) {
    return f10(root->right, key);
  }
  return f10(root->left, key);
}
