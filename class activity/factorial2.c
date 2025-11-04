// // main.c
 #include <stdio.h>

// unsigned long long factorial(int n); // declare the external ASM function

// int main() {
//     int n;
//     unsigned long long fact;

//     printf("Enter an integer: ");
//     scanf("%d", &n);

//     fact = factorial(n);

//     if (n < 0)
//         printf("Error! Factorial of a negative number doesn't exist.\n");
//     else
//         printf("Factorial of %d = %llu\n", n, fact);

//     return 0;
// }





extern int sum(int a, int b); //so that you can access the dat in the asm file

void main(){
    printf("Sum is %d \n" , sum(15,25));
}