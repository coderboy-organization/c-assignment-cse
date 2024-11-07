#include <stdio.h>

int main() {
    float kilometers, miles;
    const float conversion_factor = 0.621371;

    printf("Enter distance in kilometers: ");
    scanf("%f", &kilometers);

    miles = kilometers * conversion_factor;

    printf("%.2f kilometers is equal to %.2f miles.\n", kilometers, miles);

    return 0;
}