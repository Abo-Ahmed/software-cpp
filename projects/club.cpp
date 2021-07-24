
#include <iostream>
#include <conio.h>
using namespace std;
void dues(float &r,float &t,char &u)
{if (u=='i')
{if (r>5)
t = 1500;
else 
t =1900;

}
if (u=='f')
     {if (r>3)
     t=2400;
     else 
     t=3000;}
     }
void display(float &q,float &w,char &e)
{cout<<"your member type is   "<<e<<"your duration of membership is "<<q<<"your yearly hire is "<<w;
     }
void membertype(char &j)
{cout<<"please entre type of membership i for individual f for family>>>\n";
cin>>j;
     }
void years(float &i)
{cout <<"please entre number of years >>>\n";
cin>>i;
     }
int main ()

{char ch;
float y,h;
years(y);
membertype(ch);
dues(y,h,ch);
display(y,h,ch);


getch();
return 0;
}
