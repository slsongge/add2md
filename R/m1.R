#' Build a url in markdown
#'
#' This function helps users to paste url in markdown
#'
#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @import stringr
#' @import glue
#' @export
#'
#' @examples
#' m1("https://github.com/JiaxiangBU/add2md/")
#' m1("https://github.com/JiaxiangBU/add2md/","add2md")

m1 <- function(){
    line <-
        # clipr::read_clip() %>%
        rstudioapi::getSourceEditorContext() %>%
        rstudioapi::primary_selection() %>%
        .[["text"]] %>%
        # 省略复制的步骤，参考reprex
        stringr::str_split(n=2,pattern=' ') %>%
        .[[1]]
    url <- line[1]
    name <- line[2]
    name <- ifelse(is.na(name),'',name)

    m1 <-
    function(url="https://github.com/JiaxiangBU/add2md/",name=""){
        text <- glue::glue('[{name}]({url})')
        # clipr::write_clip(text)
        rstudioapi::insertText(text)
        # 省略粘贴的步骤
        cat(
            sep="\n"
            ,text
            ,tips()
        )
    }
    m1(url,name)
}

