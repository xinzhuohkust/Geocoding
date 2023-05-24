get_MCT <- purrr::possibly(
    function(address, sleep = 0) {
        query <- stringr::str_c("https://api.map.baidu.com/?qt=gc&wd=", address, "&cn=", address, "&ie=utf-8&oue=1&fromproduct=jsapi&v=2.1&res=api&callback=BMap._rd._cbk76808&ak=B13d386658b7f5e9c2e2294e0314afbe&seckey=QTgtP7i3IFIyZS1fxcUv7U5hN7iMgBxQuNrCL19CFFY=,0lDw2kcJe7ZlfwPRhV62rzEQvNGchN91dYNjXCXYYHr8D9Ov-kz8cj2Uvh62V7VN8bJD_0kBb_dj2DSDW9z_daRg6vUqbBY7eS7sqz2vF_b1Hch_kZqlZ2hHvTzFoC6j2E-I5FhfQ3LTDmAZ05m1UHLa2zej3-vb67l2SEyeNwaMcF6qG3BFLKRxbp1oIV6dFMZL16bDlcbEPMYpqolIng&timeStamp=1683473883023&sign=a7c3f422cf06")

        MCT <- query |>
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
            purrr::pluck("content", "coord")

        Sys.sleep(sleep)

        return(MCT)
    },
    otherwise = "error!"
)
