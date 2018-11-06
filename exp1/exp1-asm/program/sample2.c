#include <stdio.h>

int sum(int a[], int size)
{
	int i, ret = 0;

	for (i = 0; i < size; i++)
		ret += a[i];

	return ret;
}

int main()
{
	int i, a[10], a_sum;

	for (i = 0; i < 10; i++)
		a[i] = i + 1;

	a_sum = sum(a, 10);
	printf("%d\n", a_sum);

	return 0;
}
