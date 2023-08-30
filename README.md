# Binary Trees
A binary tree is a hierarchical data structure that consists of nodes connected by edges.

![Binary tree](https://img.devrant.com/devrant/rant/r_242780_fnKsw.jpg)

## Description
A binary tree is a hierarchical data structure that consists of nodes connected by edges. Each node in a binary tree has at most two child nodes, typically referred to as the left child and the right child. The topmost node of the tree is called the "root," and nodes with no children are called "leaves". Binary trees are used in various applications, such as representing hierarchical structures, search algorithms (like binary search in BSTs), and other data manipulation tasks. They provide a way to organize and efficiently access data in a hierarchical manner.

```
        5
       / \
      3   8
     / \ / \
    1  4 7  9
```

## Features
 * **Node:** A fundamental building block of a binary tree, containing a value and references to its left and right children.
 * **Root:** The topmost node in the binary tree, serving as the starting point for traversal.
 * **Parent:** A node that has child nodes connected to it.
 * **Child:** A node that is connected to a parent node.
 * **Leaf:** A node that has no children.
 * **Subtree:** A portion of a binary tree consisting of a node and all its descendants.
 * **Depth:** The level of a node within the tree, with the root having depth 0.
 * **Height:** The length of the longest path from a node to a leaf, considering edges.
 * **Binary Search Tree (BST):** A specific type of binary tree where the left child's value is less than the parent's value, and the right child's value is greater.

## Usage
```c
/* Define the structure for a binary tree node */
struct TreeNode
{
    int data;
    struct TreeNode* left;
    struct TreeNode* right;
};

/* Function to create a new node */
struct TreeNode* createNode(int data)
{
    struct TreeNode* newNode = (struct TreeNode*)malloc(sizeof(struct TreeNode));
    newNode->data = data;
    newNode->left = NULL;
    newNode->right = NULL;
    return newNode;
}
```

## Credits
 * [Data structures: Binary trees](https://www.youtube.com/watch?v=H5JubkIy_p8)
 * [6. Binary Trees, Part 1](https://www.youtube.com/watch?v=76dhtgZt38A)
 * [Binary tree](https://en.wikipedia.org/wiki/Binary_tree)
 * [Binary Search Tree](https://en.wikipedia.org/wiki/Binary_search_tree)
 * [Tree Travesarl](https://www.programiz.com/dsa/tree-traversal)
 * [Data Structure and Algorithms: Binary Tree](https://www.tutorialspoint.com/data_structures_algorithms/tree_data_structure.htm)
 * [Data Structures: Trees](https://youtu.be/oSWTXtMglKE)

## Contact
 * [Sakhile Ndlazi](https://www.twitter.com/sakhilelindah)
