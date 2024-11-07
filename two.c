#include <stdio.h>

int main() {
    float radius, area;
    // Prompt the user to enter the radius
    printf("Enter the radius of the circle: ");
    // Read the radius from the user
    scanf("%f", &radius);
    // Calculate the area of the circle
    area = 3.14 * radius * radius;
    // Display the calculated area
    printf("The area of the circle with radius %.2f is: %.2f\n", radius, area);
    return 0;
}