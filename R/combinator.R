#' Y-combinator: Curry's paradoxical combinator
#'
#' \eqn{\lambda f.(\lambda x.(f \lambda y.xxy))(\lambda x.(f \lambda y.xxy))}
#' @param f function
#' @return function
#' @author Thomas P. Harte
#' @export
#' @examples
#' # [FIXME] for some reason this won't execute with example(Y)
#' Y(\(r) \(n)
#'       `zerop?`(n)(C0)
#'       (`IF`(eq(n)(C1))
#'           (C1)
#'           (\(x) add (r( sub(n)(C1) )) (r( sub(n)(C2) )) (x)))) -> fibonacci
#'
#' sapply(
#'   list(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10),
#'   \(x) cat(sprintf("%+2s: %+3s\n", .to.integer(x), .to.integer(`fibonacci`(x)))))-> dev.null
#' `Y`<- \(f) (\(x) f(\(y) x(x)(y)))(\(x) f(\(y) x(x)(y)))
`Y`<- \(y) (\(x) y(x(x))) (\(x) y(x(x)))
