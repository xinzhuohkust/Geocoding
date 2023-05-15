\name{get_MCT}
\alias{get_MCT}
\title{
Get the Mercator coordinates of a location using Baidu Maps API
}
\usage{
get_MCT(address, sleep)
}
\arguments{
\item{address}{character vector. A character string specifying the location to search for}
\item{sleep}{numeric. The number of seconds to sleep between each request. Defaults to 0.}
}
\description{
The function sends a request to the Baidu Maps API with the specified location, and then extracts the Mercator coordinates from the response.
}
\details{
The function uses the httr2 and jsonlite packages to send a GET request to the Baidu Maps API, retrieve the response, and extract the MCT. If the request times out or fails, the function will retry up to three times with a backoff of five seconds between attempts.
}
\value{
A numeric vector of length 2 representing the MCT of the specified location, in the format of [longitude, latitude]. If the location cannot be found or the API request fails, the function will return NULL.
}

