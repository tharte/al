#' Identity Combinator
#'
#' λ x.x
#' @param x input
#' @return x (i.e. the input)
#' @author Thomas P. Harte
#' @export
#' @examples
#' ID(\(x) x)        # identity of the identity is the identity
#' ID(\(a) a)        # α-equivalence 
#' ID(\(x) \(y) x)   # identity of Boolean truth is Boolean truth
#' ID(\(x) \(y) y)   # identity of Boolean falsity is Boolean falsity
`ID`<- \(x) x


#' Branching Combinator
#'
#' λ pxy.pxy
#' @param p input (condition)
#' @param x input (if)
#' @param y input (else)
#' @return conditional output
#' @author Thomas P. Harte
#' @export
#' @examples
#' if(true)(\(a) a)(\(b) b)
#' if(false)(\(a) a)(\(b) b)
`IF`<- \(p) \(x) \(y) p(x)(y)


#' Church-Encoded Numeral: 0
#'
#' λ fx.x
#' @param f input (function)
#' @param x input 
#' @return x (apply f to x ZERO times)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C1))  # as.integer(1)
#' .to.integer(sub(C2)(C2))  # as.integer(0)
C0<- \(f) \(x) x


#' Church-Encoded Numeral: 1
#'
#' λ fx.fx
#' @param f input (function)
#' @param x input 
#' @return f(x) (apply f to x ONCE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C1))  # as.integer(1)
#' .to.integer(add(C1)(C2))  # as.integer(3)
C1<- \(f) \(x) f(x)


#' Church-Encoded Numeral: 2
#'
#' λ fx.f(fx)
#' @param f input (function)
#' @param x input 
#' @return f(f(x)) (apply f to x TWICE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(sub(C2)(C1))  # as.integer(1)
#' .to.integer(add(C1)(C2))  # as.integer(3)
C2<- \(f) \(x) f(f(x))


#' Church-Encoded Numeral: 3
#'
#' λ fx.f(f(f(x)))
#' @param f input (function)
#' @param x input 
#' @return f(f(f(x))) (apply f to x THRICE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C3))  # as.integer(3)
#' .to.integer(sub(C3)(C1))  # as.integer(2)
C3<- \(f) \(x) f(f(f(x)))


