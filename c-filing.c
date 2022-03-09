

// When a file is opened, a stream is associated with it.

// Three files and their streams are opened when program execution begins—
// the standard input, the standard output and the standard error.

/////////////////////////////
// fopen
/////////////////////////////
// FILE *fopen(const char *filename, const char *mode)
// filename − This is the C string containing the name of the file to be opened.
// mode − This is the C string containing a file access mode. It includes −
FILE *cfPtr = fopen("clients.txt", "w"));

// opening file modes in c
// "r" --> Opens a file for reading. The file must exist.
// "w" --> Creates an empty file for writing. its content is erased and the file is considered as a new empty file.
// "a" -->  Appends to a file. Writing operations, append data at the end of the file. The file is created if it does not exist.
// "r+" --> Opens a file to update both reading and writing. The file must exist.
// "w+" --> Creates an empty file for both reading and writing.
// "a+" -->  Opens a file for reading and appending.
// opening a file in write mode w when it should be in update mode r+ causes the file content to be discarded

/////////////////////////////
// fclose
/////////////////////////////
// Function fclose also receives the file pointer (rather than the filename) as an argument.
// closes file to free up memory reserved for it
fclose(cfPtr);

/////////////////////////////
// fgetc
/////////////////////////////
// Function fgetc, like getchar, reads one character from a file.
// Function fgetc receives as an argument a FILE pointer for the file from which a character will be read.
fgetc(cfPtr);

/////////////////////////////
// fputc
/////////////////////////////
// Function fputc, like putchar, writes one character to a file.
// Function fputc receives as arguments a character to be written and a pointer for the file to which the character will be written.
fputc( 'a', stdout );

/////////////////////////////
// fprintf
/////////////////////////////
// prints variable values to specified file
// fprintf("pointer to destination file" , "string specifier of varialbe data types\n", var1 , var2 , ...);
fprintf(cfPtr, "%d %s %.2f\n", account, name, balance);

/////////////////////////////
// fscanf
/////////////////////////////
// reads variable values from specified file 
// fscanf("pointer to source file" , "string specifier of varialbe data types\n", &var1 , &var2 , ...);
fscanf(cfPtr, "%d%29s%lf", &account, name, &balance);


/////////////////////////////
// feof() function.
/////////////////////////////
// int feof(FILE *stream)
// stream − This is the pointer to a FILE object that identifies the stream.
// return bool value - true if EOF found - false otherwise
feof(stdin)

/////////////////////////////
// rewind() function.
/////////////////////////////
// return cfPtr to beginning of file
rewind(cfPtr); 



/////////////////////////////
// fwrite() function.
/////////////////////////////
// transfers a specified number of bytes beginning at a pointer location in memory to a file.
// size_t fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream)
// ptr − This is the pointer to the array of elements to be written.
// size − This is the size in bytes of each element to be written.
// nmemb − This is the number of elements, each one with a size of size bytes.
// stream − This is the pointer to a FILE object that specifies an output stream.
fwrite(&blankClient, sizeof(struct clientData), 1, cfPtr);


/////////////////////////////
// sizeof() function.
/////////////////////////////
// returns the amount of memory allocated to that data type. 
// The output can be different on different machines like a 32-bit system and 64-bit system 
int a = 16;
printf("Size of variable a : %d\n",sizeof(a));
printf("Size of int data type : %d\n",sizeof(int));
sizeof(struct clientData);

/////////////////////////////
// fseek() function.
/////////////////////////////
// sets the file position pointer to a specific position in the file, then fwrite writes the data
// int fseek(FILE *stream, long int offset, int whence)
// stream − This is the pointer to a FILE object that identifies the stream.
// offset − This is the number of bytes to offset from whence.
// whence − This is the position from where offset is added. It is specified by one of the following constants −
fseek(fPtr, (accountNum - 1) * sizeof(struct clientData), SEEK_SET);                                                 


// SEEK_SET indicates that the file position pointer is positioned 
// relative to the beginning of the file by the amount of the offset.

// whence is one of (all defined in <stdio.h>): 
// SEEK_SET -> start of file,
// SEEK_CUR -> current file pointer position 
// SEEK_END -> end of file

/////////////////////////////
// fread() function.
/////////////////////////////
// transfers a specified number of bytes from the pointer location in the file specified by the file
// size_t fread(void *ptr, size_t size, size_t nmemb, FILE *stream)
// ptr − This is the pointer to a block of memory with a minimum size of size*nmemb bytes.
// size − This is the size in bytes of each element to be read.
// nmemb − This is the number of elements, each one with a size of size bytes.
// stream − This is the pointer to a FILE object that specifies an input stream.
fread( &client, sizeof( struct clientData ), 1, cfPtr );     


