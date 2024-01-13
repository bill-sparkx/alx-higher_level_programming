#include "lists.h"
#include <stdlib.h>

/**
 * delete_dnodeint_at_index - Deletes the node at index of a dlistint_t list
 * @head: Pointer to the address of the head of the doubly linked list
 * @index: Index of the node to be deleted
 *
 * Return: 1 if it succeeded, -1 if it failed
 */
int delete_dnodeint_at_index(dlistint_t **head, unsigned int index)
{
    dlistint_t *current, *temp = *head;
    unsigned int count = 0;

    if (head == NULL || *head == NULL)
        return -1;  /* List is empty */

    if (index == 0)
    {
        *head = temp->next;
        if (*head != NULL)
            (*head)->prev = NULL;
        free(temp);
        return 1;
    }

    while (temp != NULL && count < index)
    {
        current = temp;
        temp = temp->next;
        count++;
    }

    if (temp == NULL)
        return -1;  /* Index out of range */

    current->next = temp->next;

    if (temp->next != NULL)
        temp->next->prev = current;

    free(temp);

    return 1;
}

