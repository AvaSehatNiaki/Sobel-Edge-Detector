# Sobel-Edge-Detector
Image Processing 


Read the image checkboard.tif and filter it with the horizontal Sobel kernel.
Then filter the original image again using the vertical Sobel kernel. 

This result can be explained by the structure of Sobel kernel. Sobel kernel is 
designed to identify major changes in pixel values and be used as an edge detection
filter. However, in this image, while pixel colour change from black to white and 
multiplied by Sobel kernel, based on the values in the first column (-1,-2,-1), the 
edge can is not identified as the filter can’t identify the change in values of 
neighbouring pixels. While Sobel kernel is inverted for identifying the Horizontal 
edges, the (-1,-2,-1) values are shifted to first row of the kernel, is  so now when 
the black cells are located at the top the edge is not visible. 
Through Matlab’s built-in edge function however, all edges are visible. 
