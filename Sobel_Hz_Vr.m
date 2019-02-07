%Read and display the input image
I = imread('checkerboard.tif');
figure
imshow(I);
hold on;

%Compute the integral image.
intImage = integralImage(I);


%create horizontal edge kernel
h = fspecial('sobel');

% invert the sobel kernel for vertical edges
h1 = h';

%horizontal application
J = imfilter(I,h);
figure
imshow(J);

%vertical application
J1 = imfilter(I,h1);
figure
imshow(J1);