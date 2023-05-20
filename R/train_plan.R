train_plan <- function(origin, destination, sleep = 0, ak) {
  query <- stringr::str_c("https://api.map.baidu.com/direction/v2/transit?origin=", origin[2], ",", origin[1], "&destination=", destination[[2]], ",", destination[[1]], "&trans_type_intercity=0&ak=", ak)
  
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
    `starting city` = purrr::pluck(json, "result", "origin", "city_name"),
    `destination city` = purrr::pluck(json, "result", "destination", "city_name"),
    distance = list(purrr::pluck(json, "result", "routes", "distance") / 1000),
    duration = list(purrr::pluck(json, "result", "routes", "duration") / 3600),
    price = list(purrr::pluck(json, "result", "routes", "price")),
    date = lubridate::date()
  ) |>
    tidyr::unnest(cols = c(distance, duration, price))
  
  return(result)
  
  Sys.sleep(sleep)
  
}

