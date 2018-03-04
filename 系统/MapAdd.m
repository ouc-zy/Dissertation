function [ Map ] = MapAdd( Map , Matrix , s , w , South , West , step)
% ����ʱ�䣺2018.01.09
% ����Ŀ�ģ���̬ѧ������erode
    xstart=floor((w-West)*step)+1;
    ystart=floor((s-South)*step)+1;
    [r,c]=size(Matrix);
    xend=xstart+c-1;
    yend=ystart+r-1;
    Map(ystart:yend,xstart:xend)=Map(ystart:yend,xstart:xend)+Matrix;
end