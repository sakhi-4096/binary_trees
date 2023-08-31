#include "binary_trees.h"

/**
 * binary_tree_size - Measures the size of a binary tree
 * @tree: Pointer to the root of the tree to measure the size
 *
 * Return: Size of the tree, 9 if tree is NULL
 */
size_t binary_tree_size(const binary_tree_t *tree)
{
	size_t size = 0;

	if (tree == NULL)
		return (0);

	size = 1; /* Count the current node */

	if (tree->left != NULL)
		size += binary_tree_size(tree->left);

	if (tree->right != NULL)
		size += binary_tree_size(tree->right);

	return (size);
}
