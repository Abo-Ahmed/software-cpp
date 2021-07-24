#include <stdio.h>
#include <stdlib.h>
#include <math.h>
 
#define HEIGHT 24
#define HALF_WIDTH 40
 
void printStar(int n);
void sineWave();
 
int main(){
int i;
sineWave(1); // adjustable size
return 0;
}
 
void printStar(int n){
int i;
 
for(i = 1; i < n; i++) printf(" ");
printf("*");
printf("\n");
}
void sineWave(int length){
int i;
double angle;
for(i = 0; i < length; i++){
for(angle = 0; angle <= (2 * M_PI); angle = angle + (2 * M_PI / HEIGHT)){
printStar( (int)((1.0 + sin(angle)) * HALF_WIDTH ) );
}
}
}
