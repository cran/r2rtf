test_that("case when rtf_page is null and footnote equals to null", {
  x <- iris |>
    rtf_body() |>
    rtf_footnote(footnote = )
  expect_equal(attr(x, "rtf_footnote")[1], "")
})

test_that("case when footnote equals to null", {
  x <- iris |>
    rtf_page() |>
    rtf_body() |>
    rtf_footnote(footnote = )
  expect_equal(attr(x, "rtf_footnote")[1], "")
})


test_that("footnote justification left and identation first 1 left 2", {
  x <- iris |>
    rtf_page() |>
    rtf_body() |>
    rtf_footnote(footnote = "testing", text_indent_first = 1, text_indent_left = 2, text_justification = "r")

  expect_equal(attr(attr(x, "rtf_footnote"), "text_indent_first"), 1)
  expect_equal(attr(attr(x, "rtf_footnote"), "text_indent_left"), 2)
  expect_equal(attr(attr(x, "rtf_footnote"), "text_justification"), "r")
})

test_that("footnote justification left and identation left 2", {
  x <- iris |>
    rtf_page() |>
    rtf_body() |>
    rtf_footnote(footnote = "testing", text_indent_left = 2, text_indent_right = 3, text_justification = "l")

  expect_equal(attr(attr(x, "rtf_footnote"), "text_indent_left"), 2)
  expect_equal(attr(attr(x, "rtf_footnote"), "text_indent_right"), 3)
  expect_equal(attr(attr(x, "rtf_footnote"), "text_justification"), "l")
})


test_that("footnote font is 2, formats is bold", {
  x <- iris |>
    rtf_page() |>
    rtf_body() |>
    rtf_footnote(footnote = "testing", text_font = 2, text_format = "b")
  expect_equal(attr(attr(x, "rtf_footnote"), "text_font"), 2)
  expect_equal(attr(attr(x, "rtf_footnote"), "text_format"), "b")
})

test_that("footnote text color red", {
  x <- iris |>
    rtf_page() |>
    rtf_body() |>
    rtf_footnote(footnote = "testing", text_color = "red")
  expect_equal(attr(attr(x, "rtf_footnote"), "text_color"), "red")
})

test_that("footnote justification right and identation right 2, and text_indent_reference is table/page_margin", {
  x <- iris |>
    rtf_page(width = 6, col_width = 3) |>
    rtf_body()
  x_table <- x |> rtf_footnote(
    footnote = "testing", text_indent_right = 2, text_justification = "r",
    text_indent_reference = "table"
  )
  expect_equal(attr(attr(x_table, "rtf_footnote"), "text_indent_right"), 2)

  x_page <- x |> rtf_footnote(
    footnote = "testing", text_indent_right = 2, text_justification = "r",
    text_indent_reference = "page_margin"
  )
  expect_equal(attr(attr(x_page, "rtf_footnote"), "text_indent_right"), 2 + 0)
})
