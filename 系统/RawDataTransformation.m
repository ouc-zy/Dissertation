function [] = RawDataTransformation( Des )
% ����ʱ�䣺2017.12.23
% ����Ŀ�ģ�ת��ԭʼ���ݸ�ʽ
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