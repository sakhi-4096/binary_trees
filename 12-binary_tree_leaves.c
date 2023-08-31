#include "binary_trees.h"

/**
 * binary_tree_leaves - Counts the number of leaves in a binary tree
 * @tree: Pointer to the root node of the tree
 *
 * Return: Number of leaves in the tree, 0 if tree is NULL
 */
size_t binary_tree_leaves(const binary_tree_t *tree)
{
	size_t leaf_count = 0;
	size_t left_leaves = 0;
	size_t right_leaves = 0;

	if (tree == NULL)
	{
		return (0);
	}
	else
	{
		left_leaves = binary_tree_leaves(tree->left);
		right_leaves = binary_tree_leaves(tree->right);
		leaf_count = left_leaves + right_leaves;
		return ((left_leaves == 0 && right_leaves == 0) ? leaf_count + 1 : leaf_count);
	}
}
