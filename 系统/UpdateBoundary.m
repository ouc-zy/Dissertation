function [ output_args ] = UpdateBoundary( Des )
% 创建时间：2018.01.27
% 创建目的：利用形态学识别捕捞区
    load([Des '\Table.mat']);
    N=size(Table,1);
    Ntmp=-90;Stmp=90;Etmp=-180;Wtmp=180;
    figure,hold on
    for k=1:N
        load([Des '\' Table{k}]);
        TL=size(Track,1);
        for i=1:TL
            PointList=[X(Track(i,1):Track(i,2),3) X(Track(i,1):Track(i,2),2)];
            vis=PointList(:,2)>140;
            PointList(vis)=[];
%             PointList=DouglasPeucker([X(Track(i,1):Track(i,2),3) X(Track(i,1):Track(i,2),2)],0.03);
            n=max(PointList(:,2))+0.1;if(n>Ntmp)Ntmp=n;end
            s=min(PointList(:,2))-0.1;if(s<Stmp)Stmp=s;end
            e=max(PointList(:,1))+0.1;if(e>Etmp)Etmp=e;end
            w=min(PointList(:,1))-0.1;if(w<Wtmp)Wtmp=w;end
%             plot(PointList(:,1),PointList(:,2));
        end
        plot(X(:,3),X(:,2))
    end
    hold off
    save([Des '\Boundary2'],'Ntmp','Stmp','Etmp','Wtmp');
end

