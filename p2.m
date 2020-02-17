% Read the original image
f=imread('penn256.gif');
f1=imread('bear.gif');


B1f = [0, 0, 0; 0, 1, 0; 1, 1, 1];
B1b = [1, 1, 1; 0, 0, 0; 0, 0, 0];

B2f = [0, 0, 0; 1, 1, 0; 1, 1, 0];
B2b = [0, 1, 1; 0, 0, 1; 0, 0, 0];

B3f = [1, 0, 0; 1, 1, 0; 1, 0, 0];
B3b = [0, 0, 1; 0, 0, 1; 0, 0, 1];
    
B4f = [1, 1, 0; 1, 1, 0; 0, 0, 0];
B4b = [0, 0, 0; 0, 0, 1; 0, 1, 1];

B5f = [1, 1, 1; 0, 1, 0; 0, 0, 0];
B5b = [0, 0, 0; 0, 0, 0; 1, 1, 1];

B6f = [0, 1, 1; 0, 1, 1; 0, 0, 0];
B6b = [0, 0, 0; 1, 0, 0; 1, 1, 0];

B7f = [0, 0, 1; 0, 1, 1; 0, 0, 1];
B7b = [1, 0, 0; 1, 0, 0; 1, 0, 0];

B8f = [0, 0, 0; 0, 1, 1; 0, 1, 1];
B8b = [1, 1, 0; 1, 0, 0; 0, 0, 0];

Bf(:,:,1) = B1f;
Bf(:,:,2) = B2f;
Bf(:,:,3) = B3f;
Bf(:,:,4) = B4f;
Bf(:,:,5) = B5f;
Bf(:,:,6) = B6f;
Bf(:,:,7) = B7f;
Bf(:,:,8) = B8f;

Bb(:,:,1) = B1b;
Bb(:,:,2) = B2b;
Bb(:,:,3) = B3b;
Bb(:,:,4) = B4b;
Bb(:,:,5) = B5b;
Bb(:,:,6) = B6b;
Bb(:,:,7) = B7b;
Bb(:,:,8) = B8b;

% the first image
x = f;
x_prev = zeros(size(x));
i = 1;
while ~isequal(x,x_prev)
   x_prev = x; 
   for j = 1:8
       x = homo_ske(x, Bf(:,:,j),Bb(:,:,j));
   end
   if i == 2
       x2 = x;
   end
   if i == 5
       x5 = x;
   end
   if i == 10
       x10 = x;
   end
   i = i + 1;
end

% transform from a one-channel binary image to a 3-channel rgb image
[m, n]=size(f);
rgb=zeros(m,n,3);
rgb(:,:,1)=f;
rgb(:,:,2)=rgb(:,:,1);
rgb(:,:,3)=rgb(:,:,1);
rgb2 = rgb;
rgb5 = rgb;
rgb10 = rgb;

if i - 1 >= 2 
    imshow(superposition(rgb2, x2), []); 
end

if i - 1 >= 5
    figure, imshow(superposition(rgb5, x5), []); 
end

if i - 1 >= 10
    figure, imshow(superposition(rgb10, x10), []); 
end

% result as a superposition of final skeletonized image on the original image.
% the color of skeleton is red

figure, imshow(superposition(rgb, x), []); 

% the second image
x = f1;
x_prev = zeros(size(x));
i = 1;
while ~isequal(x,x_prev)
   x_prev = x; 
   for j = 1:8
       x = homo_ske(x, Bf(:,:,j),Bb(:,:,j));
   end
   if i == 2
       x2 = x;
   end
   if i == 5
       x5 = x;
   end
   if i == 10
       x10 = x;
   end
   i = i + 1;
end

% transform from a one-channel binary image to a 3-channel rgb image
[m, n]=size(f1);
rgb=zeros(m,n,3);
rgb(:,:,1)=f1;
rgb(:,:,2)=rgb(:,:,1);
rgb(:,:,3)=rgb(:,:,1);
rgb2 = rgb;
rgb5 = rgb;
rgb10 = rgb;

if i - 1 >= 2 
    figure, imshow(superposition(rgb2, x2), []); 
end

if i - 1 >= 5
    figure, imshow(superposition(rgb5, x5), []); 
end

if i - 1 >= 10
    figure, imshow(superposition(rgb10, x10), []); 
end

% result as a superposition of final skeletonized image on the original image.
% the color of skeleton is red

figure, imshow(superposition(rgb, x), []); 

