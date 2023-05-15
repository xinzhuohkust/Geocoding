\name{convert_MCT}
\alias{convert_MCT}
\title{
Convert Baidu Maps Mercator coordinates to WGS84 coordinates.
}
\description{
This function takes in longitude and latitude coordinates in the Baidu Maps Mercator projection and converts them to the standard WGS84 coordinate system. The conversion is specific to the Baidu Maps Mercator projection and may not work for other projections.
}
\usage{
convert_MCT(lon, lat)
}
\arguments{
\item{lon}{numeric. The longitude coordinate in the Baidu Maps Mercator projection.}

\item{lat}{numeric. The latitude coordinate in the Baidu Maps Mercator projection.}
}
\value{
A numeric vector containing the converted longitude and latitude coordinates in the WGS84 coordinate system.
}

