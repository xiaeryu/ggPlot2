Coordinate Systems
===============
Coordinate systems adjust the mapping from coordinates to the 2d plane of the computer screen.

Cartesian coordinates
---------------------------------
The most commonly used coordinate system.
```R
coord_cartesian(xlim = NULL, ylim = NULL, wise = NULL)  
# change limits
coord_fixed(ratio = 1, xlim = NULL, ylim = NULL, wise = NULL) 
#  forces a specified ratio between the of data units on the axes
coord_flip()
# flipped cartesian coordinates
coord_trans(xtrans = "identity", ytrans = "identity", limx = NULL, limy = NULL)
# xtrans,ytrans: transformers for x and y axes to transform the data
```

Polar coordinates
-------------------------
The polar coordinate system is most commonly used for pie charts, which are a stacked bar chart in polar coordinates.
```R
coord_polar(theta = "x", start = 0, direction = 1)
# theta: variable to map angle to (x or y)
# start: offset of starting point from 12 o'clock in radians
# direction: 1, clockwise; -1, anticlockwise
```

Map projections
--------------------------
Need further exploration :smile:

