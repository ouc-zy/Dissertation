function [ Matrix ] = Morphology2( Matrix )
% ����ʱ�䣺2018.01.08
% ����Ŀ�ģ���̬ѧ������erode
    se=strel('disk',10);
    Matrix=imdilate(Matrix,se);
end