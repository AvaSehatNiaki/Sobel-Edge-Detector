%Read and display the input image
I = imread('checkerboard.tif');
figure
imshow(I);
hold on;

%Compute the integral image.
intImage = integralImage(I);

%edge(image, filter type, treshhold=[], direction) 
Hz = edge(I,'sobel','horizontal');
Vr = edge(I,'sobel','vertical');

%showing results
figure
imshow(Hz);
figure
imshow(Vr);

