#include <stdio.h>

int main() {
    float num1, num2, num3;
    float average;

    // Prompt the user to enter three numbers
    printf("Enter the first number: ");
    scanf("%f", &num1);

    printf("Enter the second number: ");
    scanf("%f", &num2);

    printf("Enter the third number: ");
    scanf("%f", &num3);

    // Calculate the average of the three numbers
    average = (num1 + num2 + num3) / 3;

    // Display the average
    printf("The average is: %.2f\n", average);

    return 0;
}