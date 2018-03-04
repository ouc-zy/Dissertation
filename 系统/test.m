y1=x*(-i)*(exp(i*b)-exp(i*a))+x;


delta=(b-a)/2;
theta_=(a+b)/2;
A_=2*sin(delta);
x=A_*cos(theta_);
y=A_*sin(theta_);
theta=atan(y/(x+1));
A=sqrt((x+1)^2+y^2);
y2=A*exp(i*theta);
% se=strel('disk',i);
% Matrix=imdilate(MorphologyMatrix,se);
% figure,imshow(Matrix,[])
% se=strel('disk',i+1);
% Matrix=imerode(Matrix,se);
% figure,imshow(Matrix,[])

% TL=size(Track,1);
% for i=1:TL
%     PointList=DouglasPeucker([X(Track(i,1):Track(i,2),3) X(Track(i,1):Track(i,2),2)],0.03);
%     figure,plot(X(Track(i,1):Track(i,2),3),X(Track(i,1):Track(i,2),2)),title(['track' num2str(i)])
%     figure,plot(PointList(:,1),PointList(:,2)),title(['track' num2str(i)])
%     figure,plot(X(Track(i,1):Track(i,2),3),X(Track(i,1):Track(i,2),2),'.'),title(['track' num2str(i)])
%     figure,plot(PointList(:,1),PointList(:,2),'.'),title(['track' num2str(i)])
%     close all
% end
