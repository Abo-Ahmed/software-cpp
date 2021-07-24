
#include <iostream>
#include <conio.h>
#include <cstring>
using namespace std;
void  reverse (char s[50])
{char tem;
int l=strlen(s);
cout<<l;
for (int i=0;i>(l-1)/2;i++)
{tem=s[i];
s[i]=s[l-1-i];
s[l-1-i]=tem;

}
cout<<"your reverse string is\n"<<s;
}
int main ()

{char x[50];
cout <<"please,entre you best wise word>>>\n";
cin.get(x,50);
reverse(x);
getch();
return 0;
}
