/* The following code example is taken from the book
 * "Object-Oriented Programming in C++"
 * by Nicolai M. Josuttis, Wiley, 2002
 *
 * (C) Copyright Nicolai M. Josuttis 2002.
 * Permission to copy, use, modify, sell and distribute this software
 * is granted provided this copyright notice appears in all copies.
 * This software is provided "as is" without express or implied
 * warranty, and with no claim as to its suitability for any purpose.
 */
new_handler set_new_handler(new_handler newNewHandler)
{
    // store current new handler to restore later
    new_handler oldNewHandler = myNewHandler;

    // install passed function as new new handler
    myNewHandler = newNewHandler;

    // return old new handler
    return oldNewHandler;
}
