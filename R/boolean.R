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
#' \lambda xy.xyF
#' @param x input
#' @param y input
#' @return x(y)(false)
#' @author Thomas P. Harte
#' @export
`and`<- \(x) \(y) x(y)(false)


#' Boolean combinator: logical OR
#'
#' \lambda xy.xTy
#' @param x input
#' @param y input
#' @return x(true)(y)
#' @author Thomas P. Harte
#' @export
`or`<- \(x) \(y) x(true)(y)


#' Boolean combinator: logical NOT
#'
#' \lambda xy.xFT
#' @param x input
#' @return x(false)(true)
#' @author Thomas P. Harte
#' @export
#' @examples
#' not(false) # true
#' not(true)  # false
`not`<- \(x) x(false)(true)
