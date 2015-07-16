Geometric Objects : Histogram
=============

* **geom_histogram**: An alias for geom_bar plus stat_bin
* **geom_density**: A smooth density estimate calculated by stat_density.
* **geom_freqpoly**: Frequency polygon.

```R
p <- ggplot(diamonds,aes(carat))
p + geom_histogram()
p + geom_density()
p + geom_freqpoly()
```


