#include <stdio.h>
#include <stdlib.h>
void _renew(int* t)
{

    *t=*t-1;


	}
int main()
{
   int f = 1000;

  while(f>0)
   {
        printf("%d fff \n",f);
_renew(&f);

   }







       return 0;
}
