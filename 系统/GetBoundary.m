function [ ] = GetBoundary( Des )
% 创建时间：2017.12.25
% 创建目的：清洗后的数据边界
    load([Des '\Table.mat']);
    
    North=-90;South=90;East=-180;West=180;
    
    N=size(Table,1);
    for k=1:N
        load([Des '\' Table{k}]);
%         order=sprintf('X=%s;',Table{k});eval(order);
        Ntmp=max(X(:,2));if(Ntmp>North)North=Ntmp;end
        Stmp=min(X(:,2));if(Stmp<South)South=Stmp;end
        Etmp=max(X(:,3));if(Etmp>East)East=Etmp;end
        Wtmp=min(X(:,3));if(Wtmp<West)West=Wtmp;end
%         order=sprintf('clear %s;',Table{k});eval(order);
    end
    North=ceil(North);South=floor(South);East=ceil(East);West=floor(West);
    save([Des '\Boundary.mat'],'North','South','East','West');
end

