#include<stdio.h>

int *foo()
{
	int a, b;
	a = 10;
	return &a;
}

int *bar()
{
	int a, b;
	b = 20;
	return &b;
}

int baz()
{
	int a, b;
	a = 80;
	b = 90;
	return 0;
}

int main()
{
	int *p, *q, r;

	p = foo();
	q = bar();
	printf("*p = %d, *q = %d\n", *p, *q);

	r = baz();
	printf("*p = %d, *q = %d\n", *p, *q);

	return 0;
}
