#' Convert commensurate Lambda Calculus expression to integer
#'
#' @param x input
#' @return integer
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.integer(`_0_`)  # == 0 (i.e. as.integer(0))
#' .to.integer(`_1_1)  # == 1 (i.e. as.integer(1))
`.to.integer`<- \(n) n(\(x) x+1)(0)


#' Convert commensurate Lambda Calculus expression to logical
#'
#' @param x input
#' @return logical
#' @author Thomas P. Harte
#' @export
#' @examples
#' .to.logical(true)  # == TRUE (i.e. as.logical(1))
#' .to.logical(false) # == FALSE (i.e. as.logical(0))
`.to.logical`<- \(b) IF(b)(TRUE)(FALSE)
