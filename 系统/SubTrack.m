function X = SubTrack( path , st , ed , num )
%SHOWTRACK �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
    load([path '\Rawdata\Table.mat']);
    load([path '\Rawdata\x' num2str(num) '.mat']);
    if(strcmp(st,'��ѡ��'))st=datestr(X(1,1));end
    if(strcmp(ed,'��ѡ��'))ed=datestr(X(end,1));end
    st=datenum(st);
    ed=datenum(ed);
    vis=X(:,1)>st&X(:,1)<ed;
    X(~vis,:)=[];
end

