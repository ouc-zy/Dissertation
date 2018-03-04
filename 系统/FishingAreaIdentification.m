function [ output_args ] = FishingAreaIdentification( Des )
% 创建时间：2018.01.05
% 创建目的：利用形态学识别捕捞区
    FisheryAreaDir=[Des '\FisheryAreaFromTrack'];
    mkdir(FisheryAreaDir);
    load([Des '\Boundary.mat']);
    load([Des '\Table.mat']);
    
    step=60;
    Column=(North-South)*step+1;
    Row=(East-West)*step+1;
    Map=zeros(Column,Row);
    N=size(Table,1);
    for k=1:N
        load([Des '\' Table{k}]);
        TL=size(Track,1);
        TrackVis=Track(:,1)==0;TrackNumber=0;
        for i=1:TL
%             if(i>5)break;end
            if((k==19&&i==32)||(k==20)&&i==1)
                aa=0;
            end
            PointList=DouglasPeucker([X(Track(i,1):Track(i,2),3) X(Track(i,1):Track(i,2),2)],0.03);
            n=max(PointList(:,2))+0.1;
            s=min(PointList(:,2))-0.1;
            e=max(PointList(:,1))+0.1;
            w=min(PointList(:,1))-0.1;
            MorphologyMatrix=Track2Matrix(PointList,n,s,e,w,step);
            MorphologyMatrix=Morphology1(MorphologyMatrix);
            MorphologyMatrix=Morphology2(MorphologyMatrix);
            % 可视化
%             MorphologyVisual(PointList,MorphologyMatrix,s,w,step);title([Table{k} 't' num2str(i)]);
            if(length(find(MorphologyMatrix>0))<1)
                TrackVis(i)=1;
                continue;
            end;
            Map=MapAdd(Map,MorphologyMatrix,s,w,South,West,step);
            TrackNumber=TrackNumber+1;
            save([FisheryAreaDir '\' Table{k} '-' num2str(TrackNumber)],'MorphologyMatrix','s','w');
        end
        Track(TrackVis,:)=[];
        save([Des '\' Table{k}],'-append','Track');
    end
    save([FisheryAreaDir '\TotleFisheryArea'],'Map');
end