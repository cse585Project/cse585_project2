function XB = opening(X,B)
% X original image
% B symmetric structuring element
% XB X open by B

XB = dilation(erosion(X,B),B);

end