//! Basic CMake library

#ifndef CMAKE_LIBRARY_TEMPLATE_LIBRARY_H_
#define CMAKE_LIBRARY_TEMPLATE_LIBRARY_H_

/** Adds two integers together and returns the result
 *
 * This function will add two integers together and return the result.
 *
 * Examples
 *
 *     int result = library_add(1, 2);
 *
 * @param[in] lhs The left hand side of the add
 * @param[in] rhs The right hand side of the add
 * @returns The sum of lhs and rhs
 */
int library_add(int lhs, int rhs);

#endif /* CMAKE_LIBRARY_TEMPLATE_LIBRARY_H_ */
