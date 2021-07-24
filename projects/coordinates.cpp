#include <iostream>

#include <conio.h>
using namespace std;

int main ()

{char ch='n';
     char * ptr;
int name[80];
	cout<<"please entre number ";
int n=0;
int m =0;
do {
cin>>*(name+n);
n++;
m++;
cout <<"do you want to add anthor number ";

}
while (ch == 'y');
int sum =0;
for (;n>0;n--)
{sum=sum+*(name+n);  

}
cout<<"the average is    "<<sum/m;









cin>>m;
getch();
return 0;
}
