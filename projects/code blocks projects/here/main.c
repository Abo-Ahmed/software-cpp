
#include <stdlib.h>


#include <stdio.h>

int main()
{   double ironR,waterR;
	double iron,water;


	scanf("%d %d",ironR,waterR);

	scanf("%d %d",iron,water);
	while(iron!=-1)
	{
	if (iron/ironR==water/waterR)
	printf("Y/n");
	else printf("N/n");
	scanf("%d %d",iron,water);
	}
	return 0;
}

