// sort.cpp : Defines the entry point for the console application.
//


#include <iostream>
#include <algorithm>
#include <list>
#include<conio.h>
using namespace std;
int main()
{  list <int> list1,list2[5];
list1.push_back(10);
list1.push_back(2);
list1.push_back(10);
list1.push_back(40);
list1.push_back(30);
list <int>::iterator itet;
list <int>::iterator iteet;
itet=list1.begin();
iteet=list1.end();
while(!(itet==iteet))
{swap(*itet,*iteet);
itet++;
if(itet==iteet)
	break;
iteet--;
}
for(itet=list1.begin();itet!=list1.end();itet++)
{itet++;
                                                cout<<*itet<<' ';}
cout<<"\n";

getch();
	return 0;
}

