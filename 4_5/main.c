#include <stdio.h>

#define typeData(Type) {#Type, sizeof(Type), sizeof(Type*)}

typedef struct {
    char name[10];
    long int size;
    long int pointerSize;
} TypeData;

TypeData types[] = {
    typeData(char),
    typeData(short int),
    typeData(int),
    typeData(long int),
    typeData(float),
    typeData(double),
    typeData(TypeData),
};

int typesSize = sizeof(types) / sizeof(TypeData);

int main()
{
    for (int i = 0; i < typesSize; i++)
    {
        printf("%s is %ld bytes long and %s* is %ld bytes long.\n",
               types[i].name, types[i].size, types[i].name, types[i].pointerSize);
    }
}
