// overloaded insertion.cpp : Defines the entry point for the console application.
#include "stdafx.h"
#include <iostream>
using namespace std;
#include <string>
#include <iomanip>
#include <fstream>

class pub
{protected :


public :
float price ;
	
	
		

	friend istream& operator >> (istream& s,pub& p);
	friend ostream& operator << (ostream& s,pub& p);
};
 istream& operator >> (istream& s,pub& p)
 {s>>p.price;
 return s;}
ostream& operator << (ostream& s,pub& p)
{s<<p.price;
return s;
}
int main()
{pub p1,p2;
cout <<"please entre name and price by -";
cin>>p1;
fstream myReadFile;

 myReadFile.open("PASSWORD.txt", std::ios_base::in | std::ios_base::binary|std::ios_base::out);
 
 myReadFile.seekg(0);
 myReadFile.seekp(0);
 myReadFile<<p1.price;


   
    myReadFile >>p2.price;
    }
    cout<<"\n--------------------------------\n"<<p2.price<<p1.price<<endl;;
  myReadFile.close();
int x; cin>>x;	
return 0;
}

}