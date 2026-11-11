# Register a font that ships in inst/assets and return its family name, or
# "sans" when the font file is missing. Used by the 90s themes. Each font
# lives in inst/assets/<Family>/<Family>-<weight>.ttf (spaces dropped), with
# its license file. A 400 weight font also gets its 700 file as bold.
register_font <- function(family, weight = 400) {
  name <- gsub(" ", "", family)
  regular <- file.path(font_path(), name, paste0(name, "-", weight, ".ttf"))
  if (!file.exists(regular)) {
    return("sans")
  }
  bold <- file.path(font_path(), name, paste0(name, "-700.ttf"))
  if (weight == 400 && file.exists(bold)) {
    sysfonts::font_add(family = family, regular = regular, bold = bold)
  } else {
    sysfonts::font_add(family = family, regular = regular)
  }
  family
}
