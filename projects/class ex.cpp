#include <iostream>
#include <conio.h>
using namespace std;
class nvg
{private:
float x,y;  
char d ;
public:
nvg():x(0),y(0),d(0)
{}         
nvg(int i, int j ,char k):x(i),y(j),d(k)
{}
void show();
void gett ();
};
void nvg::show()
{cout <<"your coordinates is ("<<x<<","<<y<<")\n and your degree is "<<d<<endl;};
void nvg::gett()
{cout <<"please entre x-coordinate\n ";cin>>x;
cout <<"please entre y-coordinate\n ";cin>>y;
cout <<"please entre degree \n ";cin>>d;
}
int main ()

{nvg n1 ,n2;
nvg n3(12,22,'s');
cout<<"for n1\n";
n1.gett();
cout<<"for n2\n";
n2.gett();
n1.show();
n2.show();
n3.show();

getch();
return 0;
}
