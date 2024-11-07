#include <stdio.h>

int main() {
    int hours, minutes, seconds;

    printf("Enter hours: ");
    scanf("%d", &hours);

    minutes = hours * 60;
    seconds = hours * 3600; // we can also write 60*60 = 3600

    printf("%d hours is equal to %d minutes or %d seconds.\n", hours, minutes, seconds);

    return 0;
}