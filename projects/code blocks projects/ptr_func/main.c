#‎include‬ <stdio.h>
#include <stdlib.h>

int Addition(int x,int y)
{
return (x+y);
}

int main()
{
int result;
int (*p)(int a,int b);
p=Addition;

result=p(3,4);

printf("The result is %d",result);
return 0;
}
