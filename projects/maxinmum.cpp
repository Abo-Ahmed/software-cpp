#include <process.h>
#include <iostream>
#include <conio.h>
using namespace std;
float max(float x,float y)
{
 float max ;     
      if (x>y)
      max=x;
      if (y>x)
      max=y;
      if(y==x)
      {cout <<"numbers are equal\n";
      max=0;}
      return max;
      }



int main ()

{
float n1 ,n2 ;
cout <<"please entre 2 decimal numbers>>>";
cin>>n1>>n2;
if (cin.fail())
{cout<<"your didnt enter numbers";
}
else {cout<<"max number is   "<<max(n1,n2);}



getch();
return 0;
}
