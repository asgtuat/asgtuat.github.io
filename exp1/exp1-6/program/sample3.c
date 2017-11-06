#include <stdio.h>

int fact(int num)
{
	int ret;

	if (num == 1) ret = 1;
	else	      ret = num * fact(num - 1);

	return ret;
}

int main()
{
	int vaule;

	vaule = fact(4);
	printf("%d\n", value);
	return 0;
}
