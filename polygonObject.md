Geometric Objects : Polygon
=====================

* **geom_polygon**: Polygon, a filled path.
```R
data <- data.frame(x=c(1,2,3,4),y=c(2,3,2.5,1))
c <- ggplot(data, aes(x=x, y=y))
c + geom_polygon()
```

* **geom_rect**： 2d rectangles
```R
df <- data.frame(x = sample(10, 20, replace = TRUE),y = sample(10, 20, replace = TRUE))
c <- ggplot(df, aes(xmin = x, xmax = x + 1, ymin = y, ymax = y + 1))
c + geom_rect()
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
