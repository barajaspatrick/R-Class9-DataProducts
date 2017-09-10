library(leaflet)

my_map <- leaflet() %>%
        addTiles()

my_map <- leaflet() %>%
        addTiles() %>%
        addMarkers(lat = 33.6405, lng = 117.8443,
                   popup = "Patrick's School")
my_map




## what if we want to add a lot of plots

set.seed(2016-04-25)
df <- data.frame(lat = runif(20, min = 39.2, max = 39.3),
                                     lng = runif(20, min = -76.6, max = -76.5))
head(df)

df %>%
        leaflet() %>%
        addTiles() %>%
        addMarkers()