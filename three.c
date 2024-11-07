#include <stdio.h>

int main() {
    float num1, num2;
    float addi, subs, div, mul;

    // Prompt the user to enter two numbers
    printf("Enter the first number: ");
    scanf("%f", &num1);

    printf("Enter the second number: ");
    scanf("%f", &num2);

    // Perform calculations
    addi = num1 + num2;
    subs = num1 - num2;
    mul = num1 * num2;

    // Check if the second number is zero before performing division
    if (num2 != 0) {
        div = num1 / num2;
    } else {
        printf("Error: Division by zero is not allowed.\n");
        return 1;
    }

    // Print the results
    printf("addition: %.2f\n", addi);
    printf("subtraction: %.2f\n", subs);
    printf("multiplication: %.2f\n", mul);
    printf("division: %.2f\n", div);

    return 0;
}