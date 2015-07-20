Geometric Objects : Polygon
=====================

* **geom_polygon**: Polygon, a filled path.
```R
data <- data.frame(x=c(1,2,3,4),y=c(2,3,2.5,1))
c <- ggplot(data, aes(x=x, y=y))
c + geom_polygon()
```

* **geom_map**: Polygons from a reference map.
```R
crimes <- data.frame(state = tolower(rownames(USArrests)), USArrests)
library(reshape2) # for melt
crimesm <- melt(crimes, id = 1)
if (require(maps)) {
  states_map <- map_data("state")
  ggplot(crimes, aes(map_id = state)) + geom_map(aes(fill = Murder), map = states_map) + expand_limits(x = states_map$long, y = states_map$lat)
  last_plot() + coord_map()
  ggplot(crimesm, aes(map_id = state)) + geom_map(aes(fill = value), map = states_map) + expand_limits(x = states_map$long, y = states_map$lat) + facet_wrap( ~ variable)
}
```

* **geom_rect**： 2d rectangles
```R
df <- data.frame(x = sample(10, 20, replace = TRUE),y = sample(10, 20, replace = TRUE))
c <- ggplot(df, aes(xmin = x, xmax = x + 1, ymin = y, ymax = y + 1))
c + geom_rect()
```
* **geom_hex**: Hexagon bining.
* **stat_binhex**: Bin 2d plane into hexagons.
```R
d <- ggplot(diamonds, aes(carat, price))
d + stat_binhex()
d + geom_hex()
```

* **geom_tile**: plot tiles
```R
library(reshape2) # Load the library for melt 
c <- ggplot(melt(volcano), aes(x=Var1, y=Var2, fill=value))
c + geom_tile()
```

* **geom_raster**: This is a special case of geom_tile where all tiles are the same size.
```R
library(reshape2) # Load the library for melt 
c <- ggplot(melt(volcano), aes(x=Var1, y=Var2, fill=value))
c + geom_raster()
```
