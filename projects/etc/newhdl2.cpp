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
#include <new>

void f()
{
    std::new_handler oldNewHandler;  // pointer to new handler

    // install new handler and keep old one
    oldNewHandler = std::set_new_handler(&myNewHandler);
    //...
      // call operation with new
    //...
    // install old new handler again
    std::set_new_handler(oldNewHandler);
}
