#' Boolean truth
#'
#' \eqn{T}
#' @param x input
#' @return function: first input
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(true) # TRUE
`true`<- \(x) \(y) x


#' Boolean falsity
#'
#' \eqn{F}
#' @param x input
#' @return function: second input
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(false) # FALSE
`false`<- \(x) \(y) y


#' Boolean combinator: logical AND
#'
#' \eqn{\lambda xy.xyF}
#' @param x input
#' @return function: x(y)(false)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(and(false)(false)) # FALSE
#' .to.logical(and(false)(true))  # FALSE
#' .to.logical(and(true)(false))  # FALSE
#' .to.logical(and(true)(true))   # TRUE
`and`<- \(x) \(y) x(y)(false)


#' Boolean combinator: logical OR
#'
#' \eqn{\lambda xy.xTy}
#' @param x input
#' @return function: x(true)(y)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(or(false)(false)) # FALSE
#' .to.logical(or(false)(true))  # TRUE
#' .to.logical(or(true)(false))  # TRUE
#' .to.logical(or(true)(true))   # TRUE
`or`<- \(x) \(y) x(true)(y)


#' Boolean combinator: logical NOT
#'
#' \eqn{\lambda xy.xFT}
#' @param x input
#' @return function: x(false)(true)
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(not(false)) # FALSE
#' .to.logical(not(true))  # TRUE
`not`<- \(x) x(false)(true)
