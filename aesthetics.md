Aesthetics
=============
* **aes**: Generate aesthetic mappings that describe how variables in the data are. 
It creates a list of unevaluated expressions. 
This function also performs partial name matching, converts color to colour, and old style R names to ggplot names (eg. pch to shape, cex to size)
* **aes_all**: Given a character vector, create a set of identity mappings. 
* **aes_auto**: Automatic aesthetic mapping
* **aes_string**: Generate aesthetic mappings from a string. It is particularly useful when writing functions that create plots because you can use strings to define the aesthetic mappings, rather than having to mess around with expressions.

Aesthetics options
------
Colour related aesthetics: **colour**, **fill** and **alpha**(transparency)  
Aesthetics: **group**, **order**  
Differentiation related aesthetics: **linetype**, **size**, **shape**  
Position related aesthetics: **x**, **y**, **xmin**, **xmax**, **ymin**, **ymax**, **xend**, **yend**
