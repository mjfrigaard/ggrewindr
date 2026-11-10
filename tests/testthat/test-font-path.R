test_that("font_path points to the bundled fonts", {
  expect_true(dir.exists(file.path(font_path(), "PressStart2P")))
})
