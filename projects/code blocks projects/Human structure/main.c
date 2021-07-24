#include <stdio.h>
#include <stdlib.h>
struct Human {
int height;
float weight;
char name[40];
};
void setdata(struct Human *x,char a[40],int b,float c)
{x->height=b;
int i=0;
for (;i<40;i++)
    if (a[i]!= '/0')
     x->name[i]=a[i];
else
    break;
x->weight=c;

}
int main()
{struct Human my;
char g[]="Mahmoud";
void (*p)(struct Human *x,char a[40],int b,float c);
p=setdata;
   p(&my,g,166,100);
    printf("My name is %s\n",my.name);
    printf("My height is %d\n",my.height);
    printf("My weight is %f\n",my.weight);
    return 0;
}
