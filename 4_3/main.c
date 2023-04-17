#include <stdio.h>
#include <stdlib.h>

#include "asm_ops_64.h"

int main(int argc, char* argv[]) {
    if(argc != 3) {
        printf("uso \n%s <int> <int>",argv[0]);
        return 1;
    }
    int a = atoi(argv[1]), b = atoi(argv[2]);
    int s = sum(a,b), d = diff(&a,&b); 
    printf("%d + %d = %d\n%d - %d = %d\n", a, b, s, a, b, d);
    return 0;
}