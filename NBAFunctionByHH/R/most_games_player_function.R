#' NBA most_games_player_function Created by Hanzhang
#'
#' This function allows you to know the player who played most games in the NBA data for a chosen input year 
#' @param games Do you want to know who played most games in the NBA data for a chosen input year?
#' @keywords NBA, Games
#' @export
#' @examples
#' most_games_player_function()

most_games_player_function <- function(year) (
  Seasons_Stats_NBA %>%
    filter(Year == year) %>%
    arrange(desc(G), Player) %>%
    select(Player) %>%
    slice(1)
)