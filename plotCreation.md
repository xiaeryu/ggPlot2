Plot Creation
=============

* **ggplot**: Ggplot initializes a ggplot object. It can be used to declare the input data frame for a graphic and to specify the set of plot aesthetics intended to be common throughout all subsequent layers unless specifically overridden.  
ggplot() is typically used to construct a plot incrementally, using the + operator to add layers to the existing ggplot object.
This is advantageous in that the code is explicit about which layers are added and the order in which they are added.
* **is.ggplot**: Reports whether x is a ggplot object.
* **autoplot**: Create a complete ggplot appropriate to a particular data type.
```R
ggplot(df, aes(x, y, )) # Specify data and features
ggplot(df)  # Specify data
ggplot()  # In case the plots are not based on the same dataset
```

* **qplot**: qplot is the basic plotting function in the ggplot2 package, designed to be familiar if you're used to plot from the base package. It is a convenient wrapper for creating a number of different types of plots using a consistent calling scheme.
