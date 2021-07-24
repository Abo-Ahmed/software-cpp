#include <iostream>
#include <conio.h>
using namespace std;
class obj 
{ private:
      int y,z;
      static int x ;
public:
obj ():y(1),z(1)
{x++;
}
 void dsply()
{cout<<y<<endl<<z<<endl<<x<<endl;
      }   
 obj(int i,int j) : y(i),z(j)
 {x++;}      
};
int obj::x =0;
int main ()

{
obj n1;
obj n2(12,2);
obj n3;
cout<<"for n1"<<endl;
n1.dsply();
cout<<"for n2"<<endl;
n2.dsply();
cout<<"for n3"<<endl;
n3.dsply();

getch();
return 0;
}
