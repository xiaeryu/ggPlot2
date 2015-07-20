* **geom_contour**: Display contours of a 3d surface in 2d.
* **stat_contour**: Calculate contours of 3d data.
```R
library(reshape2)
volcano3d <- melt(volcano)
names(volcano3d) <- c("x", "y", "z")
v <- ggplot(volcano3d, aes(x, y, z = z))
v + stat_contour(aes(colour = ..level..))
```

* **geom_density2d**: Perform a 2D kernel density estimatation using kde2d and display the results with contours.
This can be useful for dealing with overplotting.
* **stat_density2d**: 2d density estimation.
