Here's an example .Rd file for your function get_admin_info():

\name{get_admin_info}
\alias{get_admin_info}
\title{
Get administrative information by coordinates.
}
\description{
This function retrieves administrative information (e.g., district, city, and province) from a geographical location specified by coordinates using the Baidu Maps API.
}
\usage{
get_admin_info(list_MCT, sleep = 0, full = FALSE)
}
\arguments{
\item{list_MCT}{list. A list containing Baidu Mercator.}

\item{sleep}{numeric. The number of seconds to sleep between each request. Defaults to 0.}

\item{full}{logical. If TRUE, return the full response from the API. Defaults to FALSE.}
}
\value{
If \code{full = TRUE}, the function returns a list containing the full response from the API. Otherwise, it returns a tibble containing the district, city, and province of the location.
}
