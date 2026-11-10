#' Path to the bundled fonts
#'
#' Returns the folder that holds the fonts shipped with `ggrewindr` (currently
#' Press Start 2P, used by `theme_gameboy()` and `theme_tetris()`).
#'
#' @return A file path.
#'
#' @export
#'
#' @examples
#' font_path()
font_path <- function() {
  system.file("assets", package = "ggrewindr")
}
