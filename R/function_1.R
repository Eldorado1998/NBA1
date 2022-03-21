#' An NBA Function
#'
#' This function allows you to find the best performaned player.
#' @param year The year.
#' @keywords NBA_FTR
#' @export
#' @examples
#' highest_FTr()



highest_FTr<-function(year){
  NBA_data<-dplyr::filter(NBA_df,Year==year)
  NBA_data<-dplyr::arrange(NBA_data,desc(FTr),Player)
  hf<-NBA_data[1,c("Player","FTr")]
  return(hf)
}
