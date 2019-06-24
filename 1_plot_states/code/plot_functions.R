plot_state_data <- function(in_dat, save_loc) {
  
  png(file = save_loc, height = 400, width = 300)
  maps::map('state', regions = unique(in_dat$state))
  points(x = in_dat$long, y = in_dat$lat)
  dev.off()
}