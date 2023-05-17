#' `zerop?` test zero-ness
#'
#' \eqn{\lambda n.n(\lambda m.F)T}
#' @param n input
#' @return function: T or F
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
#' \eqn{\lambda nm.\mbox{zerop?}(\mbox{sub}(n)(m))}
#' @param n input
#' @return function: T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(le(C1)(C1))
#' .to.logical(le(C1)(C2))
#' .to.logical(le(C2)(C1))
#' .to.logical(le(C2)(C2))
`le`<- \(n) \(m) `zerop?`(sub(n)(m))


#' (Strictly) Less than
#'
#' \eqn{\lambda nm.\mbox{and}(\mbox{le}(n)(m))(\mbox{not}(\mbox{zerop?}(n(\mbox{pred}(m)))))}
#' @param n input
#' @return function: T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(lt(C1)(C1)) # FALSE
#' .to.logical(lt(C1)(C2)) # TRUE
#' .to.logical(lt(C2)(C1)) # FALSE
#' .to.logical(lt(C2)(C2)) # FALSE
`lt`<- \(n) \(m) and(le(n)(m)) (not(`zerop?`(n(pred)(m))))


#' Equal to
#'
#' \eqn{\lambda nm.\mbox{and}(\mbox{le}(n)(m))(\mbox{le}(n)(m))}
#' @param n input
#' @return function: T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(lt(C1)(C1)) # FALSE
#' .to.logical(lt(C1)(C2)) # TRUE
#' .to.logical(lt(C2)(C1)) # FALSE
#' .to.logical(lt(C2)(C2)) # FALSE
`eq`<- \(n) \(m) and(le(n)(m))(le(m)(n))


#' Greater than or equal to
#'
#' \eqn{\lambda nm.\mbox{zerop?}(n(\mbox{pred})(m))}
#' @param n input
#' @return function: T or F
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(ge(C0)(C0)) # TRUE
#' .to.logical(ge(C1)(C1)) # TRUE
#' .to.logical(ge(C1)(C2)) # FALSE
#' .to.logical(ge(C2)(C1)) # TRUE
#' .to.logical(ge(C2)(C2)) # TRUE
#' .to.logical(ge(C3)(C3)) # TRUE
#' .to.logical(ge(C4)(C3)) # TRUE
#' .to.logical(ge(C3)(C4)) # FALSE
#' .to.logical(ge(C4)(C4)) # TRUE
`ge`<- \(n) \(m) `zerop?`(n(pred)(m))
