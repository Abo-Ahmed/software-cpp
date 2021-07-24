#include "StdAfx.h"
#include <iostream>
#include <iomanip>
using namespace std;
void depriciation(float x,float y ,float z)
{cout <<"cost\tscrap\tyear\n";
	for (int l=0;l<=z;l++)
	{	
		float s=x-l*y;
		cout<<setw(4)<<s<<"\t"<<y<<"\t"<<l<<endl;
	}
}
int main ()

{float i,j ,k;
cout <<"please entre your device cost>>>";
cin>>i;
cout<<"please entre scrap value>>>";
cin>>j;
cout <<"please entre number of useful years>>>";
cin>>k;
depriciation(i,j,k);
cin>>k;
return 0;
}