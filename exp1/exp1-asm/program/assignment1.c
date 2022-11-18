#include <stdio.h>

int fibonacci(int a)
{
	int ret;

	if (a == 0)      ret = 0;
	else if (a == 1) ret = 1;
	else             ret = fibonacci(a - 2) + fibonacci(a - 1);
	
	return ret;
}

int main()
{
	int a;

	a = fibonacci(6);
	printf("%d\n", a);
		
	return 0;
}
