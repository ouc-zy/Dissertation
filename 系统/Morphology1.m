function [ Matrix ] = Morphology1( Matrix )
% ����ʱ�䣺2018.01.07
% ����Ŀ�ģ���̬ѧ������erode & dilate
    se=strel('disk',5);
    Matrix=imdilate(Matrix,se);
    se=strel('disk',6);
    Matrix=imerode(Matrix,se);   
end

