Geometric Objects : Histogram
=============

* **geom_histogram**: An alias for geom_bar plus stat_bin
* **stat_bin**: New data frame with additional columns: countnumber of points in bin densitydensity of points in bin, scaled to integrate to 1 ncountcount, scaled to maximum of 1 ndensitydensity, scaled to maximum of 1
* **geom_density**: A smooth density estimate calculated by stat_density.
* **geom_freqpoly**: Frequency polygon.

```R
p <- ggplot(diamonds,aes(carat))
p + geom_histogram()
p + stat_bin()
p + geom_density()
p + geom_freqpoly()
```
