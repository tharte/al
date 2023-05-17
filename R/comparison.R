#' Truth 
#'
#' λn.n(λm.F)T
#' @param n input
#' @return T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(`zerop?`(false)) # TRUE
#' .to.logical(`zerop?`(true))  # FALSE
#' .to.logical(`zerop?`(C0))    # TRUE
#' .to.logical(`zerop?`(C3))    # FALSE
`zerop?`<- \(n) n(\(m) false)(true)
