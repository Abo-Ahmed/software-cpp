#include <iostream>
#include <conio.h>
#include <cstdlib>
#include <ctime>
using namespace std;
enum Suit {c,d,h,s};
const int j=11; 
const int q=12;
const int k=13;
const int a=14;

class card 
{private :
int num;
Suit suit ;
public :
	card ()
	{}
	void set (int n,Suit s)
	{suit=s;num=n;}
	void display();
};
void card ::display()
{if (num>=2 &&num<=10)
cout <<num;
else 
	switch (num)
{case j: cout<<"j";break;
case q: cout<<"q";break;
case k: cout<<"k";break;
case a: cout<<"a";break;
}
switch (suit)
{case c :cout << static_cast<char> (5);break;
case d :cout << static_cast<char> (4);break;
	case h :cout << static_cast<char> (3);break;
		case s :cout << static_cast<char> (6);break;
}
}
int main ()

{card deck[52];
int i;
cout<<endl;
for(i=0;i<52;i++)
{int no=(i%13)+2;
Suit su =Suit (i/13);
deck[i].set(no,su);
}
cout<<"\nordered deck:\n";
for(i=0;i<52;i++)
{deck[i].display();
cout<<"  ";
if (!((i+1)%13))
	cout<<endl;
}
srand(time(NULL));
for(i=0;i<52;i++)
	{int k =rand()%52;
card temp = deck[i];
deck[i]=deck[k];
deck [k]=temp;
}
cout<<"\nshuffled deck\n";
for(i=0;i<52;i++)
{deck[i].display();
cout<<"  ";
if (!((i+1)%13))
	cout<<endl;}


getch();
return 0;
}
