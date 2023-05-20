drive_plan <- function(origin, destination, sleep = 0, ak) {
  query <- stringr::str_c("https://api.map.baidu.com/directionlite/v1/driving?origin=", origin[2], ",", origin[1], "&destination=", destination[[2]], ",", destination[[1]], "&steps_info=0&ak=", ak)
  
  json <- query |>
    httr2::request() |>
    httr2::req_timeout(5) |>
    httr2::req_retry(
      max_tries = 3,
      backoff = ~ 5
    ) |>
    httr2::req_perform() |>
    purrr::pluck("body") |>
    rvest::read_html() |>
    rvest::html_text() |>
    jsonlite::fromJSON()
  
  result <- tibble::tibble(
    condition = purrr::pluck(json, "result", "routes", "traffic_condition"),
    distance = purrr::pluck(json, "result", "routes", "distance") / 1000,
    duration = purrr::pluck(json, "result", "routes", "duration") / 3600,
    toll = purrr::pluck(json, "result", "routes", "toll"),
    date = lubridate::date()
  )
  
  Sys.sleep(sleep)
  
  return(result)
}
