function [ output_args ] = MorphologyVisual( track , matrix , s , w , step )
% 创建时间：2018.01.08
% 创建目的：形态学结果可视化
    figure,hold on
    Max=max(max(matrix));
    [Y,X]=find(matrix>0);
    L=length(Y);
    for i=1:L
        y=(Y(i)-1)/step+s;
        x=(X(i)-1)/step+w;
        l=1/step;
        rectangle('Position',[x,y,l,l],'facecolor',[0.6,0.6,0.6],'EdgeColor',[0.6,0.6,0.6]);
    %     rectangle('Position',[y,x,w,l],'facecolor',[1,1,1],'EdgeColor',[1,1,1]);
    end
    plot(track(:,1),track(:,2))
    hold off
end

