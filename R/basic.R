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
