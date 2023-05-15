\name{haversine_distance}
\alias{haversine_distance}
\title{
Calculate the Haversine distance between two points.
}
\description{
This function takes in two sets of longitude and latitude coordinates and calculates the Haversine distance between them. The Haversine distance is the shortest distance between two points on the surface of a sphere, assuming the sphere is perfectly round.
}
\usage{
haversine_distance(x, y)
}
\arguments{
\item{x}{numeric list. The longitude and latitude coordinates of the first point.}

\item{y}{numeric list. The longitude and latitude coordinates of the second point.}
}
\value{
The Haversine distance between the two points, in kilometers.
}

