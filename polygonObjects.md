Geometric Objects : Polygon
=============
####Bars
* **geom_bar**: Bar plot.
```R
c <- ggplot(diamonds,aes(clarity))
c + geom_bar()                  # vertically arranged
c + geom_bar() + coord_flip()   # horizontally arranged
```
```R
c <- ggplot(diamonds, aes(clarity, fill=cut))
c + geom_bar()                  # accumulate arrangement
c + geom_bar(position="dodge")  # placed side by side
```

* **geom_dotplot**: the width of a dot corresponds to the bin width (or maximum width, depending on the binning algorithm), and dots are stacked, with each dot representing one observation.
```R
c <- ggplot(mtcars, aes(x = mpg))
c + geom_dotplot()
```
* **geom_rect**： 2d rectangles
```R
df <- data.frame(x = sample(10, 20, replace = TRUE),y = sample(10, 20, replace = TRUE))
c <- ggplot(df, aes(xmin = x, xmax = x + 1, ymin = y, ymax = y + 1))
c+geom_rect()
```

