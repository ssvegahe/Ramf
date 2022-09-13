### Scripts used in Supplemetary Figure-1. Substrate selection...
version
# Load library
library(Ramf)
library(tidyverse)

#################
# Read data in
#################
db_loc <- read.csv("Colonizacion_Localidades.csv")

class(db_loc)

# Add class grid to data
class(db_loc) <- c("grid", class(db_loc))


#################
# 2 way ANOVA
#################
# Do the 2-way ANOVA
am_2anova_grid(db_loc, col = "Total")

#################
# One way ANOVA
#################
# From the 2-way ANOVA we know there are
# significant differences. Using the one
# way ANOVA we can check where these 
# differences lay.

# Sisa
db_loc %>% 
    filter(trt == "Sisa") %>% 
    am_anova_grid(col = "Total")

# Sauce
db_loc %>% 
    filter(trt == "Sauce") %>% 
    am_anova_grid(col = "Total")

# Jepelacio
db_loc %>% 
    filter(trt == "Jepelacio") %>% 
    am_anova_grid(col = "Total")

# Lamas
db_loc %>% 
    filter(trt == "Lamas") %>% 
    am_anova_grid(col = "Total")

























