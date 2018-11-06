#include <stdio.h>
#include <stdlib.h>

int a;
int b = 100;
static int c = 100;
static int d;

int main()
{
	int *e, *f;
	e = malloc(sizeof(int));
	f = malloc(sizeof(int));

	printf("a's address = %p\n", &a);
	printf("b's address = %p\n", &b);
	printf("c's address = %p\n", &c);
	printf("d's address = %p\n", &d);
	printf("e's address = %p\n", e);
	printf("f's address = %p\n", f);
	printf("main's address = %p\n", main);

	return 0;
}
