#include<stdio.h>

int *foo()
{
	int a = 10;
	return &a;
}

int bar()
{
	int a = 800;
	return a;
}

int main()
{
	int *p, q;

	p = foo();
	printf("*p = %d\n", *p);
	q = bar();
	printf("*p = %d\n", *p);

	return 0;
}
