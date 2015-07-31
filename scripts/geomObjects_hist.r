library(ggplot2)

p <- ggplot(diamonds,aes(carat))
p1 <- p + geom_histogram() + ggtitle("Histogram")
p2 <- p + geom_density() + ggtitle("Density")
p3 <- p + geom_freqpoly() + ggtitle("Freqpoly")

multiplot(p1,p2,p3,cols=3)

d <- ggplot(diamonds, aes(carat, price))
d + geom_bin2d()
