#' Identity Combinator
#'
#' λx.x
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
#' λpxy.pxy
#' @param p input (condition)
#' @param x input (if)
#' @param y input (else)
#' @return conditional output
#' @author Thomas P. Harte
#' @export
#' @examples
#' IF(true)(\(a) a)(\(b) b)
#' IF(false)(\(a) a)(\(b) b)
`IF`<- \(p) \(x) \(y) p(x)(y)


#' Church-Encoded Numeral: 0
#'
#' λfx.x
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
#' λfx.fx
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
#' λfx.f(fx)
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
#' λfx.f(f(f(x)))
#' @param f input (function)
#' @param x input 
#' @return f(f(f(x))) (apply f to x THRICE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(C0)(C3))  # as.integer(3)
#' .to.integer(sub(C3)(C1))  # as.integer(2)
C3<- \(f) \(x) f(f(f(x)))


#' Successor Combinator
#'
#' λnfx.f((nf)x)
#' @param n input 
#' @param f input 
#' @param x input 
#' @return f((nf)x)
#' @author Thomas P. Harte
#' @export
#' @examples
#' succ(C0)  # C1
#' succ(C1)  # C2
#' succ(C2)  # C3
succ<- \(n) \(f) \(x) f(n(f)(x))


#' Predecessor Combinator
#'
#' TODO
#' @param n input 
#' @param p input 
#' @param z input 
#' @return predecessor
#' @author Thomas P. Harte
#' @export
#' @examples
#' pred(C1)  # C0
#' pred(C2)  # C1
#' pred(C3)  # C2
#' .to.integer(pred(succ(C0)))  # C0
#' .to.integer(pred(succ(C1)))  # C1
#' .to.integer(pred(succ(C2)))  # C2
#' .to.integer(pred(succ(C3)))  # C3
pred<- \(n) n(\(p) \(z) z(succ(p(true)))(p(true)))(\(z) z(C0)(C0))(false)
