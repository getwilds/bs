test_that("button", {
  btn <- button("Hello World")

  expect_type(btn, "character")
  expect_match(btn, "Hello World")
  expect_match(btn, "btn-primary")
})
