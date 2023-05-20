\name{convert_MCT}
\alias{convert_MCT}
\title{
Convert Baidu Maps Mercator coordinates (bd09mc) to bd09ll coordinates.
}
\description{
This function takes in longitude and latitude coordinates in the Baidu Maps Mercator projection and converts them to the Baidu bd09ll coordinate system. The conversion is specific to the Baidu Maps Mercator projection and may not work for other projections.
}
\usage{
convert_MCT(list_MCT)
}
\arguments{
\item{list_MCT}{list. A list containing Baidu Mercator coordinates.}
\value{
  A vector containing the bd09ll coordinates.
}

