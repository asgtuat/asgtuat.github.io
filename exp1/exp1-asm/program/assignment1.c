#include <stdio.h>
static int count;
int fibonacci(int a)
{
	int ret;
	count++;
	if (a == 0)      ret = 0;
	else if (a == 1) ret = 1;
	else             ret = fibonacci(a - 2) + fibonacci(a - 1);
	
	return ret;
}

int main()
{
	int a;

	a = fibonacci(4);
	printf("%d\n", a);
	printf("%d\n", count);
	return 0;
}
