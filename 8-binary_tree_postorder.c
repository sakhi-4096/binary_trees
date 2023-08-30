#include "binary_trees.h"

/**
 * binary_tree_postorder - Go through a binary tree using post-order traversal
 * @tree: Pointer to the root of the tree to traverse
 * @func: Pointer to a function to call for each node
 */
void binary_tree_postorder(const binary_tree_t *tree, void (*func)(int))
{
	if (tree == NULL || func == NULL)
		return;

	binary_tree_postorder(tree->left, func); /* Traverse left subtree */
	binary_tree_postorder(tree->right, func); /* Traverse right subtree */
	func(tree->n); /* Call the function with the current node's value */
}
