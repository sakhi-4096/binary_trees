#include "binary_trees.h"

/**
 * binary_tree_sibling - Finds the sibling of a binary tree node
 * @node: Pointer to the node for which to find the sibling
 *
 * Return: Pointer to the sibling node, or NULL if none or invalid input
 */
binary_tree_t *binary_tree_sibling(binary_tree_t *node)
{
	if (node == NULL || node->parent == NULL)
		return (NULL);

	if (node->parent->left == node)
		return (node->parent->right);

	return (node->parent->left);
}
