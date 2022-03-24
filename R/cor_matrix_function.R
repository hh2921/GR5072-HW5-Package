#' NBA oldest_player_function Created by Hanzhang
#'
#' This function allows you to create correlation matrix for the numeric parameters in the NBA dataset
#' @param correlation_matrix Do you want to know the correlation matrix for the numeric parameters in the NBA dataset?
#' @keywords NBA, numeric, correlation matrix
#' @export
#' @examples
#' cor_matrix_function()

cor_matrix_function <- function(year) (
  Seasons_Stats_NBA %>% 
    filter(Year == year) %>%
    keep(is.numeric) %>%
    cor()      
)