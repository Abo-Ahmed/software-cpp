
// Comment to end of line
/* Multi-line comment */

/////////////////////////
// Preprocessor
////////////////////////
#include  <stdio.h>         // Insert standard header file
#include "myLibrary.h"         // Insert library in current directory

/////////////////////////
// Literals
////////////////////////
255                         // Integers (decimal)
2147483647L                 // Long (32-bit) integers
123.0, 1.23e2               // double (real) numbers
'a'                         // Character (literal, octal, hex)
'\n', '\\', '\'', '\"'      // Newline, backslash, single quote, double quote
true, false                 // bool constants 1 and 0

/////////////////////////
// Declarations
////////////////////////
int x;                      // Declare x to be an integer (value undefined)
int x=255;                  // Declare and initialize x to 255
short s; long l;            // Usually 16 or 32 bit integer (int may be either)
char c='a';                 // Usually 8 bit character
unsigned char u=255;
signed char s=-1;           // char might be either
float f; double d;          // Single or double precision real (never unsigned)
bool b=true;                // true or false, may also use int (1 or 0)
int a, b, c;                // Multiple declarations
int a[10];                  // Array of 10 ints (a[0] through a[9])
int a[]={0,1,2};            // Initialized array (or a[3]={0,1,2}; )
int a[2][2]={{1,2},{4,5}};  // Array of array of ints
char s[]="hello";           // String (6 elements including '\0')

int* p;                     // p is a pointer to (address of) int
char* s="hello";            // s points to unnamed array containing "hello"
void* p=nullptr;            // Address of untyped memory (nullptr is 0)

/////////////////////////
// if condition
////////////////////////

if (conition) {
 // If x is true (not 0), evaluate this code
}                  
else if (condition){
 // If x is true (not 0), evaluate this code
}            
else { // evalueate this code if two condition not happend 
}; 

/////////////////////////
// switch
////////////////////////
switch (x) {                // x must be int
    case X1: a;             // If x == X1 (must be a const), jump here
    case X2: b;             // Else if x == X2, jump here
    default: c;             // Else jump here (optional)
}

/////////////////////////
// for loop
////////////////////////
for (int i = 0 ; i < 10 ; i++) // start ; end ; incremenat
{

  // code to repeat here 
}

/////////////////////////
// while loop
////////////////////////
int i = 0 ; // start
while ( i < 10 ) // end 
{

  // code to repeat here 

   i++; // increament
}

/////////////////////////
// do-while loop
////////////////////////
int i = 0; // start
do{

  // code to repeate

  i++; // increament

} 


break;                      // Jump out of while, do, or for loop, or switch
continue;                   // Jump to bottom of while, do, or for loop
return x;                   // Return x from function to caller



// Break Statement
// Break keyword is used to terminate the loop.
break;

// break - example 
for (int i = 0 ; i < 10 ; i++) // start ; end ; incremenat
{

  if(i == 10){
      break; // will beark the whole loop when i = 5
  }
}

// Continue Statement
// Continue keyword skips the rest of iterative code of loop and return to starting point of loop.
continue;

// continue - example 
for (int i = 0 ; i < 10 ; i++) // start ; end ; incremenat
{

  if(i == 5){
      continue; // will end current iteration only with i = 5
  }
}

/////////////////////////
// try catch
////////////////////////
try { a; }
catch (T t) { b; }          // If a throws a T, then jump here
catch (...) { c; }          // If a throws something else, jump here

/////////////////////////
// Function
////////////////////////
// Function parameters and return values may be of any type. 
// A function must either be declared or defined before it is used. 
// It may be declared first and defined later. 

int f(int x, int y);        // function declaration

int f(int x, int y){

  // code to run
}       // function defination


f(3, 4) // function call

/////////////////////////
// Function types
////////////////////////

int f(int x, int y);        // f is a function taking 2 ints and returning int
void f();                   // f is a procedure taking no arguments
void f(int a=0);            // f() is equivalent to f(0)
f();                        // Default return type is int
inline f();                 // Optimize for speed

int main()  { statements... }     // or
int main(int argc, char* argv[]) { statements... }
// argv is an array of argc strings from the command line. 
// By convention, main returns status 0 if successful, 1 or higher for errors.

/////////////////////////
// overloadend functions
////////////////////////
// Functions with different parameters may have the same name (overloading). 

int myFunc(int x, int y){

  // code to run
}       // function defination


int myFunc(float x, float y){

  // code to run
}       // function defination

/////////////////////////
// Expressions
////////////////////////

x++                         // Add 1 to x, evaluates to original x (postfix)
x--                         // Subtract 1 from x, evaluates to original x
++x                         // Add 1 to x, evaluates to new value (prefix)
--x                         // Subtract 1 from x, evaluates to new value

~x                          // Bitwise complement of x
!x                          // true if x is 0, else false (1 or 0 in C)
-x                          // Unary minus
+x                          // Unary plus (default)
&x                          // Address of x
*p                          // Contents of address p (*&x equals x)

delete p                    // Destroy and free object at address p
delete[] p                  // Destroy and free array of objects at p

x * y                       // Multiply
x / y                       // Divide (integers round toward 0)
x % y                       // Modulo (result has sign of x)

x + y                       // Add, or \&x[y]
x - y                       // Subtract, or number of elements from *x to *y
x << y                      // x shifted y bits to left (x * pow(2, y))
x >> y                      // x shifted y bits to right (x / pow(2, y))

x < y                       // Less than
x <= y                      // Less than or equal to
x > y                       // Greater than
x >= y                      // Greater than or equal to

x & y                       // Bitwise and (3 & 6 is 2)
x ^ y                       // Bitwise exclusive or (3 ^ 6 is 5)
x | y                       // Bitwise or (3 | 6 is 7)
x && y                      // x and then y (evaluates y only if x (not 0))
x || y                      // x or else y (evaluates y only if x is false (0))
x = y                       // Assign y to x, returns new value of x
x += y                      // x = x + y, also -= *= /= <<= >>= &= |= ^=
x ? y : z                   // ternary operator - y if x is true (nonzero), else z
throw x                     // Throw exception, aborts if not caught

