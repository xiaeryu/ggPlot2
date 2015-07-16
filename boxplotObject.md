Geometric Objects : Boxplot
=============

* **geom_boxplot**: Box and whiskers plot
```R
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_boxplot()  # Simple boxplot
p + geom_boxplot() + geom_jitter()  # Boxplot with jittered points
```

* **geom_violin**: It is a box plot with a rotated kernel density plot on each side.
```R
p <- ggplot(mtcars, aes(factor(cyl), mpg))
p + geom_violin()
```
