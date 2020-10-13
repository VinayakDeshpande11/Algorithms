# Linked List
## Overview

A Linked list is **Linear data structure**, where elements are stored at non-contiguous locations. A linked list is like a chain made up of **nodes** and links are the **pointers**.

**Pointers are the connections** that holds pieces of linked data structure

- Doubly Linked List: Each node has two pointers, this allows you to go backwards or forward rather than in one direction way in a linked list.
- Circular Linked List, end node points to the front node.

## Why Linked List?
- They can be used to implement other common abstract data types, including lists, stacks, queues
- Preferred data structures over arrays because of elements can be easily inserted or removed without reallocation or reorganization of the entire structure.

## Pros and cons

| 🟢 **Pros** | 🔴 **cons** |
|------|------|
| Dynamic size(no need to resize a linked list) | very slow when it comes to Access and Search we have to iterate over each element sequentially starting from the first node.|
| Quick Insertion/Deletion of nodes because you just change the pointers of each node to insert/delete | Extra space for pointers |

## Big-O Analysis

| **Operation** | **Big-O** | **Explanation** |
| -----| ---- | ---- |
| Insertion | `O(1)` | you just change the pointers of each node to insert |
| Deleteion  | `O(1)` | you just change the pointers of each node to delete |
| Access | `O(n)` | We nedd to iterate over each element sequentially starting from the first node to access the target node. |
| Search | `O(n)` | We nedd to iterate over each element sequentially starting from the first node to access the target node.|

## Techniques

**Runner Technique**: Iterate through the linked list with two pointers simultaneously, with one ahead of the other. The ***fast*** node might be ahead by a fixed amount, or it might be hopping multiple nodes for each one that the ***slow*** node iterates through.
