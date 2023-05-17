#' Boolean Truth
#'
#' T
#' @param x input
#' @param y input
#' @return x first input
#' @author Thomas P. Harte
#' @export
`true`<- \(x) \(y) x


#' Boolean Falsity
#'
#' F
#' @param x input
#' @param y input
#' @return y second input
#' @author Thomas P. Harte
#' @export
`false`<- \(x) \(y) y


#' Boolean combinator: logical AND
#'
#' \lambda xy.x
#' @param x input
#' @param y input
#' @return x(y)(false)
#' @author Thomas P. Harte
#' @export
`and`<- \(x) \(y) x(y)(false)
