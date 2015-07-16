Geometric Objects : Lines
==============================
**geom_abline**: adds a line with specified slope and intercept to the plot  
**geom_vline**: annotate the plot with vertical lines  
**geom_hline**: annotate the plot with horizontal lines

```R
p + geom_abline(intercept = 37, slope = -5)
p + geom_vline(xintercept = 5)
p + geom_hline(yintercept = 20)
```

**geom_line**: Connect observations, ordered by x value.
```R
p + geom_line()
```
**geom_segment**: plots single line segments
```R
p + geom_segment(x = 5, y = 30, xend = 3.5, yend = 25)
```

**geom_step**: Connect observations by stairs.
```R
p + geom_step()
```
<br>
####Output figures of the commands above:

![geomObjects_line.png](https://github.com/xiaeryu/Figures/blob/master/ggPlot2/geomObjects_line.png)
Script used to plot the figures: [geomObjects_line.r](https://github.com/xiaeryu/ggPlot2/blob/master/scripts/geomObjects_line.r)

* **geom_path**: Connect observations in original order
```R
df <- data.frame(x=c(1,2,3,4,5,6,7),y=c(3,54,6,82,1,34,5))
p -> ggplot(df,aes(x,y)) 
p + geom_path()
```


