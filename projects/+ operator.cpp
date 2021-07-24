#include <iostream>
#include <cmath>
#include <conio.h>
using namespace std;
class polar 
{private :
float x,y,r,angle ;
public :
	polar ():r(0),x(0),y(0),angle(0)
	{}
	polar (float i,float j):r(i),angle (j)
	{}
	void convert()
	{x=r*cos(angle);y=r*sin(angle);
 cout<<"x coordinate"<<x<<"y coordinate"<<y ; }
	void get ()
	{cout <<"\nplease entre polar distance? \n";
	cin>>r;
	cout<<"\nplease entre polar angle from 0 to 360 degree?\n";
	cin>>angle;}
	void display()
	{cout <<"\nthe polar distance is \n"<<r<<"\nthe polar angle is \n"<<angle;}
	polar operator + (polar ) const;
	
};
polar polar ::operator + (polar p) const
{float xx=x+p.x;
	cout <<"x"<<x;
	float yy=y+p.y;
	cout <<"yy"<<yy;
    float rr= sqrt((xx)*(xx)+(yy)*(yy));
	cout <<"rr"<<rr;
    float a = yy/xx;
	cout <<"a"<<a;
    return polar (rr,a);
    }
int main ()

{polar in1,in2,out;
cout<<"\nplease entre prameters for 1st radial distance? \n";
in1.get();
cout<<"\nplease entre prameters for 2nd radial distance? \n";
in2.get();
out=in1+in2;
cout <<"\nthe sum of you points \n where angle is given by inverse tan \n";
in1.convert();
in1.display();
out.display();
getch();
return 0;
}
