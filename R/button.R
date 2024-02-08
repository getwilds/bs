#' Button
#'
#' @export
#' @importFrom htmltools HTML
#' @importFrom glue glue
#' @param text (character) the text to put in the button
#' @param class (character) button class, e.g., primary, success, danger
#' @param href (character) a page or url to link to. optional
#' @details
#' - `role="button"` is used when `href` is not NULL
#' - if `href` is supplied a button of the form `<a>` is used, while
#' if `href` is not supplied a button of the form `<button>` is used
#' @return a `glue` string
#' @examples
#' button("Hello World")
#' button("Danger World!", class = "danger")
#' button("<i class=\"fa-solid fa-box-open\"></i> Hello World")
#' button("Hello World", href = "help.html")
button <- function(text, class = "primary", href = NULL) {
	if (!is.null(href)) {
		glue("<a class=\"btn btn-{class}\" href=\"packages.html\" role=\"button\">{text}</a>")
	} else {
		glue("<button type=\"button\" class=\"btn btn-{class}\">{text}</button>")
	}
}
