function [output_args] = Plate_Detector(ex);

inputImage = imread(ex);
greyImage = (0.2989 * double(inputImage(:,:,1)) + 0.5870 * double(inputImage(:,:,2)) + 0.1140 * double(inputImage(:,:,3)))/255;
imshow(greyImage);

kernal = [1 2 1; 0 0 0; -1 -2 -1];
Gx =  conv2(double(greyImage),kernal);
Gy = conv2(double(greyImage),kernal');
G = sqrt(Gx.^2 + Gy.^2);
imshow(G);

% GxKernal = [-1 0 1;-2 0 2;-1 0 1];
% GyKernal = [-1 -2 -1; 0 0 0; 1 2 1];
% 
% Gx =  conv2(double(grey_image),GxKernal);
% Gy = conv2(double(grey_image),GyKernal);
% 
% G = sqrt(Gx.^2 + Gy.^2);
% gradient =  atan2(Gy,Gx);
% imshow(abs(G));

end