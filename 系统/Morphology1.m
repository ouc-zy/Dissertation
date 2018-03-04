function [ Matrix ] = Morphology1( Matrix )
% 创建时间：2018.01.07
% 创建目的：形态学操作：erode & dilate
    se=strel('disk',5);
    Matrix=imdilate(Matrix,se);
    se=strel('disk',6);
    Matrix=imerode(Matrix,se);   
end

