haversine_distance <- function(x, y) {
  (geosphere::distm(as.numeric(unlist(x)), as.numeric(unlist(y)), fun = geosphere::distHaversine) / 1000)[1]
}

