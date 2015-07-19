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
