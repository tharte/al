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
#' .to.integer(add(`_0_`)(`_1_`))  # as.integer(1)
#' .to.integer(sub(`_2_`)(`_2_`))  # as.integer(0)
`_0_`<- \(f) \(x) x


#' Church-Encoded Numeral: 1
#'
#' λ fx.fx
#' @param f input (function)
#' @param x input 
#' @return f(x) (apply f to x ONCE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(`_0_`)(`_1_`))  # as.integer(1)
#' .to.integer(add(`_1_`)(`_2_`))  # as.integer(3)
`_1_`<- \(f) \(x) f(x)


#' Church-Encoded Numeral: 2
#'
#' λ fx.f(fx)
#' @param f input (function)
#' @param x input 
#' @return f(f(x)) (apply f to x TWICE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(sub(`_2_`)(`_1_`))  # as.integer(1)
#' .to.integer(add(`_1_`)(`_2_`))  # as.integer(3)
`_2_`<- \(f) \(x) f(f(x))


#' Church-Encoded Numeral: 3
#'
#' λ fx.f(f(f(x)))
#' @param f input (function)
#' @param x input 
#' @return f(f(f(x))) (apply f to x THRICE)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(add(`_0_`)(`_3_`))  # as.integer(3)
#' .to.integer(sub(`_3_`)(`_1_`))  # as.integer(2)
`_3_`<- \(f) \(x) f(f(f(x)))



