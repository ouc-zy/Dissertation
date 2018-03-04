function [] = RawDataTransformation( Des )
% 创建时间：2017.12.23
% 创建目的：转换原始数据格式
    load([Des '\Table.mat']);
    N=size(Table,1);
    for k=1:N
        load([Des '\' Table{k}]);
        X(:,1)=[];
        X=sortrows(X,1);
        X(:,1)=GPSTime2RealTime(X(:,1));
        [longitude,latitude]=GPSPoint2Coordinate(X(:,3),X(:,2));
        X(:,3)=longitude;X(:,2)=latitude;
        save([Des '\' Table{k}],'X');
    end
end