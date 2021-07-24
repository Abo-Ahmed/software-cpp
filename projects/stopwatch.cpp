#include <iostream>
#include <time.h> /* time_t, struct tm, time, localtime, strftime */
using namespace std;

void console_clear_screen() {
#ifdef WINDOWS
system("cls");
#endif
#ifdef LINUX
system("clear");
#endif
}

int main ()
{
time_t rawtime;
struct tm * timeinfo;
char buffer [80];
char s='s';
while(1){
console_clear_screen();
time (&rawtime);
timeinfo = localtime (&rawtime);
strftime (buffer,80,"%I:%M:%S%p.",timeinfo);
if (buffer[7]!=s){
for (int i=0;i<10;i++){
cout<<buffer[i];
}
s=buffer[4];
for (int i=0;i<10;i++){
cout<<"\b";
}
}

}
cin.get();
cin.get();
return 0;
}
