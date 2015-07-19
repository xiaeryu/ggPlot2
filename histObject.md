Geometric Objects : Histogram
=============

* **geom_histogram**: An alias for geom_bar plus stat_bin
* **stat_bin**: New data frame with additional columns: countnumber of points in bin densitydensity of points in bin, scaled to integrate to 1 ncountcount, scaled to maximum of 1 ndensitydensity, scaled to maximum of 1
* **geom_density**: A smooth density estimate calculated by stat_density.
* **stat_density**: 1d kernel density estimate.
* **geom_freqpoly**: Frequency polygon.
* **geom_bin2d**: Add heatmap of 2d bin counts.
* **stat_bin2d**: Count number of observation in rectangular bins.

```R
p <- ggplot(diamonds,aes(carat))
p + geom_histogram()
p + stat_bin()
p + geom_density()
p + stat_density()
p + geom_freqpoly()

d <- ggplot(diamonds, aes(carat, price))
d + geom_bin2d()
d + stat_bin2d()
```
