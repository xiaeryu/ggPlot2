Annotation
====================

* **annotate**: This function adds geoms to a plot. Unlike typical a geom function, the properties of the geoms are not mapped from variables of a data frame, but are instead in as vectors. This is useful for adding small annotations (such as text labels) or if you have your data in vectors, and for some reason don't want to put them in a data frame.

```R
annotate(geom, x = NULL, y = NULL, xmin = NULL, xmax = NULL, ymin = NULL, ymax = NULL)
# geom: name of geom to use for annotation
# x,y,xmin,ymin,xmax,ymax: positions
p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
p + annotate("text", x = 4, y = 25, label = "Some text")  # Add text
p + annotate("text", x = 2:3, y = 20:21, label = c("my label", "label 2"))  # Add multiple texts
p + annotate("rect", xmin = 3, xmax = 4.2, ymin = 12, ymax = 21, alpha = .2)  # Add rectangle
p + annotate("segment", x = 2.5, xend = 4, y = 15, yend = 25, colour = "blue")  # Add segment
p + annotate("pointrange", x = 3.5, y = 20, ymin = 12, ymax = 28, colour = "red", size = 1.5) # Add point range
```

* **annotation_raster**: This is a special version of geom_raster optimised for static annotations that are the same in every panel. 
```R
annotation_raster(raster, xmin, xmax, ymin, ymax, interpolate = FALSE)
# raster: raster object to display
rainbow <- matrix(hcl(seq(0, 360, length = 50 * 50), 80, 70), nrow = 50)
qplot(mpg, wt, data = mtcars) + annotation_raster(rainbow, 15, 20, 3, 4)  # Special region
qplot(mpg, wt, data = mtcars) + annotation_raster(rainbow, -Inf, Inf, -Inf, Inf) + geom_point() # Fill the plot, points above
rainbow2 <- matrix(hcl(seq(0, 360, length = 10), 80, 70), nrow = 1)
qplot(mpg, wt, data = mtcars) + annotation_raster(rainbow2, -Inf, Inf, -Inf, Inf) + geom_point()
qplot(mpg, wt, data = mtcars) + annotation_raster(rainbow2, -Inf, Inf, -Inf, Inf, interpolate = TRUE) + geom_point()
```

* **annotation_custom**: Most useful for adding tables, inset plots, and other grid-based decorations.
```R
annotation_custom(grob, xmin = -Inf, xmax = Inf, ymin = -Inf, ymax = Inf)
# grob: grob to display
```

* **annotation_logticks**: This annotation adds log tick marks with diminishing spacing. These tick marks probably make sense only for base 10.
* **annotation_map**: Annotation: maps.
* **borders**: Create a layer of map borders.
