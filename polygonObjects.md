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
