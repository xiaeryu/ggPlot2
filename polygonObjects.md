Geometric Objects : Polygon
=============
* **geom_bar**: Bar plot.
```R
c <- ggplot(mtcars, aes(factor(cyl)))
c + geom_bar()
c + geom_bar() + coord_flip()
