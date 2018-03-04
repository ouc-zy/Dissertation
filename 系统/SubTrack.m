function X = SubTrack( path , st , ed , num )
%SHOWTRACK 此处显示有关此函数的摘要
%   此处显示详细说明
    load([path '\Rawdata\Table.mat']);
    load([path '\Rawdata\x' num2str(num) '.mat']);
    if(strcmp(st,'请选择'))st=datestr(X(1,1));end
    if(strcmp(ed,'请选择'))ed=datestr(X(end,1));end
    st=datenum(st);
    ed=datenum(ed);
    vis=X(:,1)>st&X(:,1)<ed;
    X(~vis,:)=[];
end

