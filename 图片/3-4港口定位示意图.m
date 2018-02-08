
hold on
r=(North-South)*6;
c=(East-West)*6;
step=1/6;
for i=1:r
    for j=1:c
        n=South+i*step;
        s=South+(i-1)*step;
        e=West+j*step;
        w=West+(j-1)*step;
        if(sum(X(:,3)<e&X(:,3)>=w&X(:,2)>=s&X(:,2)<n))
            plot([w e],[n n],'color',[0.6 0.6 0.6]);
            plot([w e],[s s],'color',[0.6 0.6 0.6]);
            plot([w w],[s n],'color',[0.6 0.6 0.6]);
            plot([e e],[s n],'color',[0.6 0.6 0.6]);
        end
    end
end
rectangle('Position',[West+15*step,South+21*step,step,step],'facecolor',[1 0 0],'edgecolor',[0.6 0.6 0.6])
rectangle('Position',[West+16*step,South+21*step,step,step],'facecolor',[1 0 0],'edgecolor',[0.6 0.6 0.6])
rectangle('Position',[West+24*step,South+35*step,step,step],'facecolor',[1 0 0],'edgecolor',[0.6 0.6 0.6])
plot(X(:,3),X(:,2),'.')
axis off
% set(gca,'XTick',[120 122 125 127],'XTickLabel',{'120¡ã','122¡ã','125¡ã','127¡ãE'});
% set(gca,'YTick',[25 28 31 34],'YTickLabel',{'25¡ã','28¡ã','31¡ã','34¡ãN'});
set(gca,'XTick',[],'XTickLabel',{});
set(gca,'YTick',[],'YTickLabel',{});
set(gca,'fontsize',16);
xlabel('¾­¶È')
ylabel('Î³¶È')
axis([120 127 25 34])