#' Convert commensurate Lambda Calculus expression to integer
#'
#' @param x input
#' @return integer
#' @author Thomas P. Harte
#' @export
`.to.integer`<- \(n) n(\(x) x+1)(0)


#' Convert commensurate Lambda Calculus expression to logical
#'
#' @param x input
#' @return logical
#' @author Thomas P. Harte
#' @export
`.to.logical`<- \(b) IF(b)(TRUE)(FALSE)
