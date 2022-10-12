test_that("test multiserver works", {
  expect_identical(multiserver(1,1,1),
                dplyr::tibble(Arrivals = 1, ServiceBegins = 1, ChosenServer = 1, ServiceEnds = 2))
  expect_identical(multiserver(5,7,8),
                   dplyr::tibble(Arrivals = 5, ServiceBegins = 5, ChosenServer = 1, ServiceEnds = 12))
  expect_error(multiserver(-1,2,3))
})
