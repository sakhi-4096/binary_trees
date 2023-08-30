#include "binary_trees.h"

/**
 * binary_tree_height - Measures the height of a binary tree
 * @tree: Pointer to the root of the tree to measure tje height
 *
 * Return: Height of the tree, 0 if the tree is NULL
 */
size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t left_height = binary_tree_height(tree->left);
    size_t right_height = binary_tree_height(tree->right);

	if (tree == NULL)
		return (0);

	return (1 + (left_height > right_height ? left_height : right_height));
}
