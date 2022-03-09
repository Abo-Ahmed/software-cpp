

// A structure cannot contain an instance of itself.
//  For example, a variable of type struct employee cannot be declared in the definition for struct employee.
//  A pointer to struct employee, however, may be included

// A structure containing a  pointer to the same structure type 
// is referred to as a self-referential structure.


///////////////////////////////////////////
// struct creation 
///////////////////////////////////////////

// creating struct without name
struct {
char *face;
char *suit;
} aCard, deck[ 52 ], *cardPtr;


// creating struct with name
struct card {
char *face;
char *suit;
};

struct card aCard, deck[ 52 ], *cardPtr;

// valid operations on structures:
// ◦ assigning structure variables to structure variables of the same type
// ◦ taking the address (&) of a structure variable,
// ◦ accessing the members of a structure variable
// ◦ using the sizeof


///////////////////////////////////////////
// structure intialization example
///////////////////////////////////////////

// follow the variable name in the definition with an equals sign 
// and a brace-enclosed, comma-separated list of initializers
struct card aCard = { "Three", "Hearts" };

// If there are fewer initializers in the list than members in the structure, 
// the remaining members are automatically initialized to 0 (or NULL if the member is a pointer)


///////////////////////////////////////////
// accessing structure members
///////////////////////////////////////////

// structure member operator (.) -->  dot operator ==> used with variables
printf( "%s", aCard.suit );

// structure pointer operator (->) --> arrow operator. ==> used with pinters
printf( "%s", cardPtr->suit );


// these three expressions are equal:
cardPtr->suit 
(*cardPtr).suit
aCard.suit


// When structures or individual structure members are passed to a function, they are passed by value
// To pass an array by value, create a structure with the array as a member


///////////////////////////////////////////
// typedef
///////////////////////////////////////////

// provides a mechanism for creating synonyms for previously defined data types.
typedef struct card Card;
// Card can now be used to declare variables of type struct card.
Card deck[ 52 ];