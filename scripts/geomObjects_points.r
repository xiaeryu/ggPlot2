library(ggplot2)
data(mpg)

p <- ggplot(mpg, aes(displ, hwy))
p1 <- p + geom_point() + ggtitle("geom_point")              
p2 <- p + geom_jitter() + ggtitle("geom_jitter")
p3 <- p + geom_point(position = "jitter") + ggtitle("jitter with geom_point")

multiplot(p1,p2,p3,cols=3)
