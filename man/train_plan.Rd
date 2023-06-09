\name{train_plan}
\alias{train_plan}
\title{
  Get transit information from Baidu Map API.
}
\description{
  This function retrieves transit information from Baidu Map API for a given
  origin and destination. It returns a tibble containing the starting and 
  destination city, distance, duration, price and the date.
}
\usage{
  train_plan(origin, destination, sleep = 0, ak)
}
\arguments{
  \item{origin}{vector. A vector containing the latitude and longitude of the origin point.}

  \item{destination}{vector. A vector containing the latitude and longitude of the destination point.}

  \item{sleep}{numeric. The sleep time in seconds between API requests. Default is 0.}

  \item{ak}{character. The Baidu Map API key.}
  
  \item{uid}{vector. The character vector containing the uid from the \code{get_admin_info}.}
}
\details{
  This function sends a request to the Baidu Map API to retrieve transit information 
  for a given origin and destination. The returned result is parsed into a tibble format 
  containing the starting and destination city, distance, duration, price and the date.
}
\value{
  A tibble containing the train information.
}
