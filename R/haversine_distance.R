haversine_distance <- function(x, y) {
  (geosphere::distm(unlist(x), unlist(y), fun = geosphere::distHaversine) / 1000)[1]
}

