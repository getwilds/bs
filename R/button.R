#' Button
#'
#' @export
#' @importFrom htmltools HTML
#' @importFrom glue glue
#' @examples
#' button("Hello World")
#' button("Danger World!", class = "danger")
#' button("<i class=\"fa-solid fa-box-open\"></i> Hello World")
#' button("Hello World", href = "help.html")
button <- function(text, class = "primary", role = "button", href = NULL) {
	if (!is.null(href)) {
		glue("<a class=\"btn btn-{class}\" href=\"packages.html\" role=\"button\">{text}</a>")
	} else {
		glue("<button type=\"button\" class=\"btn btn-{class}\">{text}</button>")
	}
}
