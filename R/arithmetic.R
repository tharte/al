#' Add operator 
#'
#' λnm.(m succ)n
#' @param n left operand
#' @param m right operand
#' @return n + m 
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C0)) # as.integer(0))
#' .to.integer(add(C0)(C1)) # as.integer(1))
#' .to.integer(add(C1)(C0)) # as.integer(1))
#' .to.integer(add(C1)(C1)) # as.integer(2))
#' .to.integer(add(C1)(C2)) # as.integer(3))
#' .to.integer(add(C2)(C1)) # as.integer(3))
#' .to.integer(add(C2)(C2)) # as.integer(4))
#' .to.integer(add(C2)(C3)) # as.integer(5))
#' .to.integer(add(C3)(C2)) # as.integer(5))
`add`<- \(n) \(m) m(succ)(n)


#' Subtraction operator 
#'
#' λnm.(m pred)n
#' @param n left operand
#' @param m right operand
#' @return n + m 
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C0)) # as.integer(0))
#' .to.integer(add(C0)(C1)) # as.integer(1))
#' .to.integer(add(C1)(C0)) # as.integer(1))
#' .to.integer(add(C1)(C1)) # as.integer(2))
#' .to.integer(add(C1)(C2)) # as.integer(3))
#' .to.integer(add(C2)(C1)) # as.integer(3))
#' .to.integer(add(C2)(C2)) # as.integer(4))
#' .to.integer(add(C2)(C3)) # as.integer(5))
#' .to.integer(add(C3)(C2)) # as.integer(5))
`sub`<- \(n) \(m) m(pred)(n)


#' Multiplication operator 
#'
#' λnm.m(add n)C0
#' @param n left operand
#' @param m right operand
#' @return n * m 
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(mul(C0)(C0)) # as.integer(0))
`mul`<- \(n) \(m) m(add(n))(C0)


#' Exponentiation operator 
#'
#' λnm.mn
#' @param n left operand
#' @param m right operand
#' @return n^m
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(exp(C2)(C1)) # as.integer(2))
#' .to.integer(exp(C2)(C2)) # as.integer(4))
#' .to.integer(exp(C2)(C3)) # as.integer(8))
`exp`<- \(n) \(m) m(n)
