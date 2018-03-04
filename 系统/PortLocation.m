function [ output_args ] = PortLocation( Des )
% 创建时间：2017.12.25
% 创建目的：定位港口
    load([Des '\Boundary.mat']);
    step=600;
    Row=(North-South)*step+1;
    Column=(East-West)*step+1;
    Map=zeros(Row,Column);
    
%     figure,hold on
    load([Des '\Table.mat']);
    N=size(Table,1);
    for k=1:N
        load([Des '\' Table{k}]);
%         order=sprintf('X=%s;',Table{k});eval(order);
        DeltaDistance=SphericalDistance(X(:,3),X(:,2));
        DDZero=DeltaDistance==0;
        X(DDZero,:)=[];
        
        DeltaDistance=SphericalDistance(X(:,3),X(:,2));
        DeltaTime=diff(X(:,1));
        DeltaSpeed=DeltaDistance./(DeltaTime*24);
        
        pos=find(DeltaSpeed<=0.00002);
        M=length(pos);
        for i=1:M
            x=floor((X(pos(i),3)-West)*step)+1;
            y=floor((X(pos(i),2)-South)*step)+1;
            Map(y,x)=Map(y,x)+1;
        end
        
%         order=sprintf('clear %s;',Table{k});eval(order);
    end
    %% 可视化判断
    [y,x]=find(Map>0);
    Port=zeros(length(x),2);
    for i=1:length(x)
        Port(i,1)=(x(i)-1)/step+West;
        Port(i,2)=(y(i)-1)/step+South;
    end
    save([Des '\Port'],'Port');
%% 可视化
%     for k=1:N
%         load([Des '\' Table{k}]);
%         order=sprintf('X=%s;',Table{k});eval(order);
%         figure,plot(X(:,3),X(:,2));hold on
%         plot(port(:,1),port(:,2),'r.','markersize',15);axis([118 128 24 34])
%         title(Table{k})
%     end
%     figure,plot(X(:,3),X(:,2));
%     hold on
%     plot(X(pos,3),X(pos,2),'r.','Markersize',10)
%     hold off
%     save('Map','Map');
end