#' `zerop?` test zero-ness
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


#' Less than or equal to
#'
#' λn.n(λm.F)T
#' @param n input
#' @return T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(le(C1)(C1))
#' .to.logical(le(C1)(C2))
#' .to.logical(le(C2)(C1))
#' .to.logical(le(C2)(C2))
`le`<- \(n) \(m) `zerop?`(sub(n)(m))
