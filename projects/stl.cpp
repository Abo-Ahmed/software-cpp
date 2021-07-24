// stl.cpp : Defines the entry point for the console application.
//


#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <deque>
#include <map>
#include <list>
#include <algorithm>
#include <conio.h>
# pragma warning (disable 4786)
using namespace std;



int a(int aa)
{return aa*100;
}



	int main()
{int arr1[5]={2,3,5,4,5},arr2[5]={2,3,4,1,55},arr3[14];

	vector <int >v1(arr1,arr1+5),v2,v3(arr2,arr2+5);
v1.erase(v1.begin()+2);
for(;!v1.empty();)
{cout<<v1.back();
v1.pop_back();
        }
getch();
return 0;
}
