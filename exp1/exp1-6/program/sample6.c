#include <stdio.h>

int main()
{
	int a[10], b[10], i;
	
	for (i = 0; i < 10; i++)
		b[i] = 0;

	for (i = 0; i < 20; i++)
		a[i] = 1;

	for (i = 0; i < 10; i++)
		printf("%d\n", b[i]);
	
	return 0;
}
