function [ Map ] = MapAdd( Map , Matrix , s , w , South , West , step)
% 创建时间：2018.01.09
% 创建目的：形态学操作：erode
    xstart=floor((w-West)*step)+1;
    ystart=floor((s-South)*step)+1;
    [r,c]=size(Matrix);
    xend=xstart+c-1;
    yend=ystart+r-1;
    Map(ystart:yend,xstart:xend)=Map(ystart:yend,xstart:xend)+Matrix;
end