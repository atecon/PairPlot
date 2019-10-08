# PairPlot

This package implements a subplot grid for plotting pairwise relationships (with factorization) in a dataset. It works similar to Seaborn's (for Python) PairPlot class.

Each variable in a list is mapped onto a column and row in a grid of multiple axes. It can also represent an additional level of conditionalization with the 'factor' parameter (a series), which plots different subsets of data in different colors and/or point/circle types. This is used to resolve elements on a third dimension.

# Usage via the GUI
The function PairPlot() can be accessed through the GUI. The menu entry is "View->Graph specified vars->Pair Plot".
However, via scripting the user can control many more details.
***

# PairPlot() function

## Parameters:

L:
*list, List of series to consider.*

factor:
*series, Optional discrete variable in to map plot aspects to different colors and/or points/ circles. Default: null.*

size:
*series, Placeholder for future feature. Default: null.*

filename:
*string, Path plus filename plus file extension. Currently the following file-types are supported: png, pdf, eps and svg (monochrome only). Default: 'display' which draws the resulting plot directly at the screen.*

opts:
*bundle, Optional bundle for passing additional parameters. See below for explanation. Default: null.*


## Returns:
An integer of value '0' if no error occurs, otherwise 1.
***

## Options passed to the PairPlot() function by means of the 'opts' bundle
The user can control the following aspects by adding the respective parameter to the 'opts' bundle.

type, str: 
*Select the type of plot. The following types are supported:
(i) "matrix": Scatterplot matrix which draws a scatter plot between all combinations of variables included in list L.
(ii) "triangle": Lower tringular version of the scatterplot "matrix" type.
(iii) "row": Plot the first series element in list L in a single row against all remaining list members.
(iv) "row_transponed": Works like type "row" but subplots are arranged in a single column instead.
Default: "triangle".*

use_circles, bool:
*Draw circles instead of points if set to 1. Default: 0.*

pointsize, scalar:
*Control the size of points but not circles. Default: 0.5.*

pointtype, matrix:
*Control the type of points. Can be either a scalar entry such that points associated to different levels of 'factor' are of the same type. One may also provide a vector of integers for each distinct value of the 'factor' series. Default: 7.*

key, bool:
*If the 'factor' series is provided, a legend shows the color and point pattern for each distinct value of the 'factor' variable. Default: 1.*

key_position, str:
*Controls the position of the legend in each subplot (use standard gnuplot options). Default: "top left".*

transparency_level, scalar:
*Controls the transparency level of points and circles (between 0 and 1). Default: 0.5.*

tics, bool:
*Print x-tics and y-tics. Default: 1.*

aspect_scale:
*Positive scaling factor for controlling the size of the plot. Default: 1.*

fontsize, int:
*Control the fontsize. Default: 8.*

font, str:
*Control the type of font. Default: "League Spartan".*

offset_level, scalar:
*Provides a mechanism to put a boundary around the data inside of an autoscaled graph. For details see:
<http://gnuplot.sourceforge.net/docs_4.2/node209.html>
Default: 0.02.*



Changelog:
----------
Version 0.5 (Oct. 2019):
- Initial version
