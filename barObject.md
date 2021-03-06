Geometric Objects : Bar
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
![](https://github.com/xiaeryu/Figures/blob/master/geomObjects_bar1.png)

* **geom_dotplot**: the width of a dot corresponds to the bin width (or maximum width, depending on the binning algorithm), and dots are stacked, with each dot representing one observation.
* **stat_bindot**: statistics for dotplot.
```R
c <- ggplot(mtcars, aes(x = mpg))
c + geom_dotplot()
c + stat_bindot()
```
![](https://github.com/xiaeryu/Figures/blob/master/geomObjects_bar2.png)
