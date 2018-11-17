#' Build an image in markdown
#'
#' This function helps users to paste image in markdown
#'
#' @param url Character.
#' @param name Character.

#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @import stringr
#' @import glue
#' @export
#'
#' @examples
#' m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png")
#' m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png",""The blog wallpaper")

m2 <- function(){
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
    m2 <-
        function(url="https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png",name=""){
            text <- glue::glue('![{name}]({url})')
            # clipr::write_clip(text)
            rstudioapi::insertText(text)
            # 省略粘贴的步骤
            cat(
                sep="\n"
                ,text
                ,tips()
            )
        }
    m2(url,name)
}

