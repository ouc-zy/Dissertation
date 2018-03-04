function [ Matrix ] = Morphology2( Matrix )
% 创建时间：2018.01.08
% 创建目的：形态学操作：erode
    se=strel('disk',10);
    Matrix=imdilate(Matrix,se);
end