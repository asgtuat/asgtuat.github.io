#include <stdio.h>
#include <stdlib.h>

void g()
{
    printf("g() is called\n");
    exit(0);
}

int f()
{
    int a[2];
    printf("f() is called\n");
    a[6] = g;
    return 0;
}

int main()
{
    f();
    return 0;
}
