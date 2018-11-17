#' Print current time
#'
#' This function helps users to print current time just by shortcut.
#'
#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @import lubridate
#' @export
#'
#' @examples
#' m1("https://github.com/JiaxiangBU/add2md/")
#' m1("https://github.com/JiaxiangBU/add2md/","add2md")

pn <- function(){
    text <- lubridate::now() %>% as.character()
    rstudioapi::insertText(text)
    # 省略粘贴的步骤
    cat(
        sep="\n"
        ,text
        ,tips()
    )
}

