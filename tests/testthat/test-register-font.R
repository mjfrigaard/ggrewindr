test_that("register_font falls back to sans when font files are missing", {
  expect_equal(register_font("Missing Font"), "sans")
  expect_equal(register_font("Arimo", weight = 900), "sans")
})

test_that("register_font registers bundled fonts", {
  expect_equal(register_font("Arimo"), "Arimo")
  expect_equal(register_font("Tinos", weight = 700), "Tinos")
  expect_true(all(c("Arimo", "Tinos") %in% sysfonts::font_families()))
})
