library(ggplot2)
data(mtcars)

p <- qplot(wt,mpg,data=mtcars)

p1 <- p + geom_abline(intercept = 37, slope = -5) + ggtitle("geom_abline")
p2 <- p + geom_vline(xintercept = 5) + ggtitle("geom_vline")
p3 <- p + geom_hline(yintercept = 20) + ggtitle("geom_hline")
p4 <- p + geom_line() + ggtitle("geom_line")
p5 <- p + geom_segment(x = 5, y = 30, xend = 3.5, yend = 25) + ggtitle("geom_segment")
p6 <- p + geom_step() + ggtitle("geom_step")

## multiplot is a function found here: http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_(ggplot2)/
multiplot(p1, p4, p2, p5, p3, p6, cols=3)
