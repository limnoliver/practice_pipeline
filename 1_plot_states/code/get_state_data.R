get_state_data <- function(my_state, samp_size) {
  state_dat <- 
    maps::map(database = 'state', region = my_state, plot = FALSE)
  
  coord_range <- state_dat$range
  long_seq <- seq(coord_range[1], coord_range[2], by = 0.01)
  lat_seq <- seq(coord_range[3], coord_range[4], by = 0.01) 
  
  state_dat <- data.frame(value = sample(1:100, samp_size, replace = TRUE),
                          long = sample(long_seq, samp_size),
                          lat = sample(lat_seq, samp_size),
                          state = my_state)
  
  return(state_dat)
}