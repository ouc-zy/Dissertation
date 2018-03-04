function [ StTime , EdTime ] = RawDataCleaning( Des )
% 创建时间：2017.12.20
% 创建目的：对原始数据做清洗，包括异常值、缺失数据、错误数据以及劣质数据的发现与处理
    load([Des '\Table.mat']);
    N=size(Table,1);
    StTime=inf;EdTime=0;
    for k=1:N
        load([Des '\' Table{k}]);
%         order=sprintf('X=%s;',Table{k});eval(order);
        % 数据时间异常
        
        % 数据坐标异常
        DeltaDistance=SphericalDistance(X(:,3),X(:,2));
        DeltaTime=diff(X(:,1));
        DeltaSpeed=DeltaDistance./(DeltaTime*24);
        vis=DeltaSpeed>30;
        % 单独一个点的异常可能是由于开关机造成的
        % 2017.12.27：速度异常必然是数据通信问题，开关机只可能造成速度极小值
        vis1=[vis;0];
        vis2=[0;vis];
        vis3=[0;0;vis];vis3(end)=[];
        visdelete=vis1|vis2|vis3;
        
        X(visdelete,:)=[];

        vis=X(:,3)<118;
        X(vis,:)=[];
%         order=sprintf('%s=X;',Table{k});eval(order);
        save([Des '\' Table{k}],'X');
%         order=sprintf('clear %s;',Table{k});eval(order);
        if(X(1,1)<StTime)StTime=X(1,1);end
        if(X(end,2)>EdTime)EdTime=X(end,1);end
    end
end

