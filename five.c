#include <stdio.h>

int main() {
    int num1, num2, remainder;

    // Prompt the user to enter the first number
    printf("Enter the first number: ");
    scanf("%d", &num1);

    // Prompt the user to enter the second number
    printf("Enter the second number: ");
    scanf("%d", &num2);

    // Check if the second number is not zero to prevent division by zero
    if (num2 != 0) {
        // Calculate the remainder of the division
        remainder = num1 % num2;

        // Display the remainder
        printf("The remainder is: %d\n", remainder);
    } else {
        printf("Error: Division by zero is not allowed.\n");
    }

    return 0;
}