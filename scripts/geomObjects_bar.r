library(ggplot2)
data(diamonds)

c <- ggplot(diamonds,aes(clarity))
c1 <- c + geom_bar()  + ggtitle("vertical")                   # vertically arranged
c2 <- c + geom_bar() + coord_flip() + ggtitle("horizontal")   # horizontally arranged

d <- ggplot(diamonds, aes(clarity, fill=cut))
d1 <- d + geom_bar() + ggtitle("on top")                        # accumulate arrangement
d2 <- d + geom_bar(position="dodge") + ggtitle("side by side")  # placed side by side

multiplot(c1,c2,d1,d2,cols=2)
