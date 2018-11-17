#' Build detail and summary html5 style in markdown
#'
#' This function helps users to fold the details by html5 tags.
#'
#' @param name Character.

#' @return Character.
#' @author Jiaxiang Li
#'
#' @import rstudioapi
#' @import stringr
#' @import glue
#' @export

m_detail <- function(){
    input <-
        # clipr::read_clip() %>%
        rstudioapi::getSourceEditorContext() %>%
        rstudioapi::primary_selection() %>%
        .[["text"]] %>%
        # 省略复制的步骤，参考reprex
        stringr::str_split(n=2,pattern=' ') %>%
        .[[1]]
    title <-
        input %>%
        .[1]
    content <-
        input %>%
        .[2:length(.)] %>%
        stringr::str_flatten(collapse = '\n')
    text <- glue::glue(
        "<details>
    <summary>{title}</summary>

    {content}

    </details>",title=title,content=content)
    # clipr::write_clip(text)
    rstudioapi::insertText(text)
    # 省略粘贴的步骤
    cat(
        sep="\n"
        ,text
        ,tips()
    )
}
