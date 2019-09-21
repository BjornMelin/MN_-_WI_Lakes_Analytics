library(mdsr)
library(tidyverse)
# Load in the lake data into the workspace:
lakes_data <- read_csv("https://raw.githubusercontent.com/jmzobitz/MAT213Datasets/master/project1_data_S19.csv")

glimpse(lakes_data)
lakes_data


?str_detect
fish <- lakes_data %>% filter(str_detect(name, "Fish"))
fish$state


ggplot(data = fish, aes(x = AreaSqKm)) +
  ggtitle(label = "Density Plot of Lakes in MN & WI Whos Names Contain 'Fish'") +
  geom_histogram(aes(x= AreaSqKm, y = ..density..), 
           fill = "#b2d7e9", colour = "black", bins = 30) +
  xlab(label = "Area of Lake in Square KM") +
  ylab(label = "Density") +
  facet_grid(.~state) 
  #geom_density(colour = "red") 
