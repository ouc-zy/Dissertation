% TL=size(Track,1);
% for i=1:TL
%     s=Track(i,1);
%     t=Track(i,2);
%     plot(X(s:t,3),X(s:t,2));
% end
hold on
s=Track(1,1);
t=Track(1,2);
plot(X(s:t,3),X(s:t,2),'linewidth',2);
s=Track(8,1);
t=Track(8,2);
plot(X(s:t,3),X(s:t,2),'linewidth',2);
k=16;
s=Track(k,1);
t=Track(k,2);
plot(X(s:t,3),X(s:t,2),'linewidth',2);
set(gca,'XTick',[120 122 125 127],'XTickLabel',{'120°„','122°„','125°„','127°„E'});
set(gca,'YTick',[27 28 29 30 31],'YTickLabel',{'27°„','28°„','29°„','30°„','31°„N'});
set(gca,'fontsize',16);
xlabel('æ≠∂»')
ylabel('Œ≥∂»')
axis([120 127 27 31])