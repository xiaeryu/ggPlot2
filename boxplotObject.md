Geometric Objects : Boxplot
=============

* **geom_boxplot**: Box and whiskers plot
* **stat_boxplot**: Calculate components of box and whisker plot.
```R
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_boxplot()  # Simple boxplot
p + stat_boxplot()
p + geom_boxplot() + geom_jitter()  # Boxplot with jittered points
```

* **geom_violin**: It is a box plot with a rotated kernel density plot on each side.
* **stat_ydensity**: 1d kernel density estimate along y axis, for violin plot.
```R
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_violin()
p + stat_ydensity()
```

* **geom_quantile**: Add quantile lines from a quantile regression. This can be used as a continuous analogue of a geom_boxplot.
* **stat_quantile**: Continuous quantiles.
```R
msamp <- movies[sample(nrow(movies), 1000), ]
m <- ggplot(msamp, aes(year, rating)) + geom_point()
m + stat_quantile()
q10 <- seq(0.05, 0.95, by=0.05)
m + stat_quantile(quantiles = q10)
```

* **geom_smooth**: Add a smoothed conditional mean.
* **stat_smooth**: Add a smoother.
```R
c <- ggplot(mtcars, aes(qsec, wt))
