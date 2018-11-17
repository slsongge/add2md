#' Bold your text in markdown
#'
#' This function helps users to paste bold text in markdown

#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @import stringr
#' @import glue
#' @export
#'
#' @examples
#' m3("Jiaxiang Li")


m3 <- function(){
    line <-
        # clipr::read_clip() %>%
        rstudioapi::getSourceEditorContext() %>%
        rstudioapi::primary_selection() %>%
        .[["text"]] %>%
        # 省略复制的步骤，参考reprex
        stringr::str_split(n=2,pattern=' ') %>%
        .[[1]]

    m3 <-
        function(name="Type something"){
            text <- glue::glue('**{name}**')
            # clipr::write_clip(text)
            rstudioapi::insertText(text)
            # 省略粘贴的步骤
            cat(
                sep="\n"
                ,text
                ,tips()
            )
        }
    m3(line)
}
