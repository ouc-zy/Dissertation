function [ output_args ] = VoyageDivision( Des )
% 创建时间：2018.01.04
% 创建目的：划分航次
    load([Des '\Boundary.mat']);
    load([Des '\Table.mat']);
    load([Des '\Port.mat']);
    
    step=60;
    Column=(North-South)*step+1;
    Row=(East-West)*step+1;
    Map=zeros(Column,Row);
    L=size(Port,1);
    for i=1:L
        x=floor((Port(i,1)-West)*step)+1;
        y=floor((Port(i,2)-South)*step)+1;
        Map(y,x)=1;
    end
    N=size(Table,1);
    for k=1:N
        load([Des '\' Table{k}]);
        vis=X(:,1)==0;% vis作为矩阵标记必须为逻辑型
        M=size(X,1);
        for i=1:M
            x=floor((X(i,3)-West)*step)+1;
            y=floor((X(i,2)-South)*step)+1;
            if(Map(y,x)==1)vis(i)=1;end
        end
        
        % Track：记录航次起止点
        Track=[];it=1;
        while(it<M)
            if(vis(it)==1&&vis(it+1)==0)break;end;
            it=it+1;
        end
        for i=it:M-1
            if(vis(i)==1&&vis(i+1)==0)Track=[Track;i+1];
            elseif(vis(i)==0&&vis(i+1)==1)Track=[Track;i];
            end
        end
        Track_num=length(Track);
        if(mod(Track_num,2)==1)Track(end)=[];end
        Track=reshape(Track,2,floor(Track_num/2))';
        vis=(Track(:,2)-Track(:,1))<120;
        Track(vis,:)=[];
        save([Des '\' Table{k}],'-append','Track');
%         for i=1:size(Track,1)
%             plot(X(Track(i,1):Track(i,2),3),X(Track(i,1):Track(i,2),2))
%         end
%         order=sprintf('clear %s;',Table{k});eval(order);
    end
end