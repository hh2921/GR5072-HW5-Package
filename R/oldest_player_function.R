#' NBA oldest_player_function Created by Hanzhang
#'
#' This function allows you to know the player who is the oldest player in the NBA data for a chosen input year 
#' @param oldest Do you want to know who  who is the oldest player in the NBA data for a chosen input year?
#' @keywords NBA, Oldest
#' @export
#' @examples
#' oldest_player_function()

oldest_player_function <- function(year) (
  Seasons_Stats_NBA %>% 
    filter(Year == year) %>%
    arrange(desc(Age), Player) %>%
    select(Player) %>%
    slice(1)       
)