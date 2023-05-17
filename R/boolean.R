#' Boolean truth
#'
#' T
#' @param x input
#' @param y input
#' @return x first input
#' @author Thomas P. Harte
#' @export
`true`<- \(x) \(y) x


#' Boolean falsity
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
#' λ xy.xyF
#' @param x input
#' @param y input
#' @return x(y)(false)
#' @author Thomas P. Harte
#' @export
`and`<- \(x) \(y) x(y)(false)


#' Boolean combinator: logical OR
#'
#' λ xy.xTy
#' @param x input
#' @param y input
#' @return x(true)(y)
#' @author Thomas P. Harte
#' @export
`or`<- \(x) \(y) x(true)(y)


#' Boolean combinator: logical NOT
#'
#' λ xy.xFT
#' @param x input
#' @return x(false)(true)
#' @author Thomas P. Harte
#' @export
#' @examples
#' not(false) # true
#' not(true)  # false
`not`<- \(x) x(false)(true)
