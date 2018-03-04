function Map = ShowFishingArea( path , st , ed  )
%SHOWTRACK 此处显示有关此函数的摘要
%   此处显示详细说明
    load([path '\Rawdata\Table.mat']);
    load([path '\Rawdata\Boundary.mat']);
    step=60;
    
    st=datenum(st);
    ed=datenum(ed);
    Column=(North-South)*step+1;
    Row=(East-West)*step+1;
    Map=zeros(Column,Row);
    N=size(Table,1);
    for k=1:N
        load([path '\Rawdata\' Table{k}]);
        TL=size(Track,1);
        for i=1:TL
            a=X(Track(i,1),1);
            b=X(Track(i,2),1);
            if((a>st&&a<ed)||(b>st&&b<ed))
                load([path '\Rawdata\FisheryAreaFromTrack\' Table{k} '-' num2str(i)])
                Map=MapAdd(Map,MorphologyMatrix,s,w,South,West,step);
            end
        end
    end
end