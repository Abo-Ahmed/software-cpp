
// basic program
#include<stdio.h>
int main(){
    return 0;
}

// printf() function
// It is used to print anything/show output on console
printf("Hello World");

// scanf() function
// It is used to take input from user 
// scanf("format specifier",variable_name);
scanf("%d",variable_name);

// Format Specifiers
%c	Character
%d , %i , %u	Integer
%f	float
%lf	double
%l	long
%Lf	long double
%lld	long long
%o	octal representation
%p	pointer
%s	string
%%	prints % symbol

// Variables
// It is data name that is used to store the data value in the memory.

// Rules to declare variables:
// int	is not valid -->	keywords are not allowed
// amount$	is not valid -->	Dollar Sign is not allowed
// your name	is not valid -->	Space between variable name is not allowed

// Basic Data Types
// char - It stores single character. Size - 1 byte
char var_name = 'a';

// int - It stores an integer value. Size - 4 bytes
int age = 18;

// float - It stores an floating point value with 6 digit precision. Size - 4 bytes
float radius = 5.8;

// double - It stores an float value with 14 digit precision. Size - 8 bytes.
double var = 12.1531452;

// void - Represents the absence of type.
void main(){
    //does not return anything.
}

// bool - It stores boolean value - true or false
bool var = true;

// Escape Sequences
\a	Produces Alarm/Beep Sound
\b	Backspace
\f	Form Feed
\n	New Line
\t	Tab Space
\v	Tab Space - Vertically
\\	Backslash
\"	Double Quote "
\'	Single Quote '
\?	Question Mark


// Arithmetic Operators

+	a+b	Addition or unary plus
-	a-b	Subtraction or unary minus
*	a*b	Multiplication
/	a/b	Division
%	a%b	Modulo Division-Gives remainder

// Relational Operators
<	a < b	is less than
>	a > b	is greater than
<=	a<=b	is less than or equal to
>=	a>=b	is greater than or equal to

// Logical Operators
&&	a && b	logical AND
||	a || b	logical OR
!	a ! b	logical NOT

// Increment and Decrement Operators
variable_name++ Here ++ is a increment operator, it increments the value of variable by 1.
variable_name-- Here -- is a decrement operator and it decrements the value of variable by 1.

// More examples:
int a = 1; // a value is 1
a++;       // Now Value becomes 2

int b = 5; // b value is 5
b--;       // Now, b value is 4

// Conditional Statements
If Statement
if(codition)
{
    //statements or code
}
//example
int a = 1, b = 5;
if(a < b){
    printf("A is smaller");
}

// If-Else Statements
if(condition){
    //statements
}
else{
    //statements
}
//example
int a=1; b=5;
if(a < b){
    printf("A is smaller");
}
else{
    printf("B is smaller");
}

// If Else-If Statements
if(condtion){
    //code
}
else if(another_condtion){
    //code
}
else{
    //code
}

// Switch Case Statements
switch(expression)
{
    case constant-expression:
        statement1;
        statements2;
        break;
    case constant-expression:
        another_statements;
        break;

   
    default;
        statements;
}

// Iterative Statements - loops
// It executes the statements inside a block of loop until condition is false

// for loop
for (int i = 0 ; i < 10 ; i++) // start ; end ; incremenat
{

  // code to repeat here 
}

// while loop
int i = 0 ; // start
while ( i < 10 ) // end 
{

  // code to repeat here 

   i++; // increament
}

// do-while loop
int i = 0; // start
do{

  // code to repeate

  i++; // increament

} 

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


// Functions
// Functions are used to divide the code and to avoid repetitive task. 
// It provides reusability and readability to code.

// Function decleration
return_type function_name(data_type-parameters);
// example 
int add(int a, int b); // declaration should be before main

// Function defination
return_type function_name(data_type-parameters){
    //code
}
//  Example of function to add two numbers
int add(int a, int b){
    return a+b;
}

// Function call
add(2,3)

// Recursion
// Recursion is the process of repeating items in a self-similar way.
// If a program allows you to call a function inside the same function, 
// then it is called a recursive call of the function.
void myFunction(){
    myFunction();   //Function calling itself
}

//Factorial Using Recursion
long factorial(long n){
    if(n==0){
        return 1;
    }
    return n * factorial(n -1);
}

int main(){
    int n = 5;
    printf("Factorial of %d is %l.",n,factorial(n));
    return 0;
}
//OUTPUT : Factorial of 5 is 120.

// Pointers
// Pointer is a variable that contains the address of another variable.
datatype *var_name;

// First, create a pointer of the proper type:
float *f;
// Second assign it to a variable's memory location:
f = &boat;
// Finally, use the pointer:
printf("%.0f",*f);


// Arrays
// Array is an collection of data of same data-type.
// Array index starts from 0.

// array defination
data_type array_name[array_size];

//Example

int arr = {1,2,3,4,5};
printf("%d",arr[0])
//OUTPUT : 1

// Strings
// It is basically 1D character array. It character of string is null character (\0)
char string_name[size];

// Important String Functions
// gets() function - It is used to take input of multi-character string
gets("string");
// puts() function - It is used to show string output
puts("string");
// strlen() function - It prints the length of string.
strlen(string_name);
// strcat() function - It is used to concatenate two strings.
strcat(string1, string2);
// strcmp() function - It is used to compare two strings. Gives output in 0/1.
strcmp(string1, string2);
// strcpy() function - It is used to copy the content of 1st string to another string.
strcpy(string1, string2);

