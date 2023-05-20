get_admin_info <- function(list_MCT, sleep = 0, full = FALSE) {
  location <- stringr::str_c("https://api.map.baidu.com/?qt=rgc&x=", list_MCT[[1]], "&y=", list_MCT[[2]], "&dis_poi=100&poi_num=10&latest_admin=1&ie=utf-8&oue=1&fromproduct=jsapi&v=2.1&res=api&callback=BMap._rd._cbk1899&ak=B13d386658b7f5e9c2e2294e0314afbe&seckey=QTgtP7i3IFIyZS1fxcUv7XKwbgK6bqfjAF1bCrqBO20=,0lDw2kcJe7ZlfwPRhV62rwcKzrobqQ7fSyBuUwLq90_0q4g0ZiVMFwng1Clb5yrsPi3gmIjul0Pv5P1JrFKgprNjbBQR0LO-d0wpWW3lDIDx6R8lc9cvB82A_SwsAYToaouwvIzgVHfyytdk7_-lVoNLsAlB97ic29Nu-yNu3ac0RRbClYr4xIBX26-3gH-7UmxiYhe9qXFAVMEhlolRTBpIZbdrertc2CBF7YE5h-4&timeStamp=1683459630021&sign=7ad6dc466104") |>
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
    stringr::str_extract("(?<=\\d\\().+?(?=\\)$)") |>
    jsonlite::fromJSON() |>
    purrr::pluck("content")

  Sys.sleep(sleep)

  if (full == TRUE) {
    return(location)
  } else {
    info <- list(
      district = purrr::pluck(location, "address_detail", "district"),
      city = purrr::pluck(location, "address_detail", "city"),
      province = purrr::pluck(location, "address_detail", "province")
    ) %>% 
      tibble::as_tibble()
    return(info)
  }
}


