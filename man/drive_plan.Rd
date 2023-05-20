\name{drive_plan}
\alias{drive_plan}
\title{
  Get driving information from Baidu Map API.
}
\description{
  This function retrieves driving information from Baidu Map API for a given
  origin and destination. It returns a tibble containing the traffic condition, 
  distance, duration, toll and the date.
}
\usage{
  drive_plan(origin, destination, sleep = 0, ak)
}
\arguments{
  \item{origin}{list. A list containing the latitude and longitude of the origin point.}

  \item{destination}{list. A list containing the latitude and longitude of the destination point.}

  \item{sleep}{numeric. The sleep time in seconds between API requests. Default is 0.}

  \item{ak}{character. The Baidu Map API key.}
}
\details{
  This function sends a request to the Baidu Map API to retrieve driving information 
  for a given origin and destination. The returned result is parsed into a tibble format 
  containing the traffic condition, distance, duration, toll and the date.
}
\value{
  A tibble containing the driving information.
}
