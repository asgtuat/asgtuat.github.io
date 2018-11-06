int max(int a, int b)
{
	int ret;

	if (a < b) ret = b;
	else       ret = a;
	
	return ret;
}

int main()
{
	int a;

	a = max(10, 100);

	return 0;
}


