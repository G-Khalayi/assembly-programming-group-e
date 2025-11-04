// this is the c file that calls its corresponding asm file
#include<stdio.h>


extern int sum(int a, int b); //so that you can access the dat in the asm file

void main(){
    printf("Sum is %d \n" , sum(15,25));
}