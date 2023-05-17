haversine_distance <- function(x, y) {
  distance <- geosphere::distm(unlist(x), unlist(y), fun = geosphere::distHaversine) / 1000
  return(distance[1, 1])
}

