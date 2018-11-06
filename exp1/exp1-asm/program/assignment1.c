#include <stdio.h>

int comb(int n, int r)
{
	int ret;
	
	if (n == 0) ret = 1;
	else if (r == 1) ret = n;
	else if (r == 0 || n == r) ret = 1;
	else ret = comb(n-1, r-1) + comb(n-1, r);

	return ret;
}

int main()
{
	int a;

	a = comb(4,2);
	printf("a = %d\n", a);

	return 0;
}
