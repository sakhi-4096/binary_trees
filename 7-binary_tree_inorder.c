#include "binary_trees.h"

/**
 * binary_tree_inorder - Go through a binary tree using in-order traversal
 * @tree: Pointer to the root node of the tree to traverse
 * @func: Pointer to a function to call each node
 */
void binary_tree_inorder(const binary_tree_t *tree, void(*func)(int))
{
	if (tree == NULL || func == NULL)
		return;

	binary_tree_inorder(tree->left, func); /* Traverse keft subtree */
	func(tree->n); /* Call function with the current node's value */
	binary_tree_inorder(tree->right, func); /* Traverse right subtree */
}
