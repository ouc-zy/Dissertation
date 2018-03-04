function [ StTime , EdTime ] = RawDataCleaning( Des )
% ����ʱ�䣺2017.12.20
% ����Ŀ�ģ���ԭʼ��������ϴ�������쳣ֵ��ȱʧ���ݡ����������Լ��������ݵķ����봦��
    load([Des '\Table.mat']);
    N=size(Table,1);
    StTime=inf;EdTime=0;
    for k=1:N
        load([Des '\' Table{k}]);
%         order=sprintf('X=%s;',Table{k});eval(order);
        % ����ʱ���쳣
        
        % ���������쳣
        DeltaDistance=SphericalDistance(X(:,3),X(:,2));
        DeltaTime=diff(X(:,1));
        DeltaSpeed=DeltaDistance./(DeltaTime*24);
        vis=DeltaSpeed>30;
        % ����һ������쳣���������ڿ��ػ���ɵ�
        % 2017.12.27���ٶ��쳣��Ȼ������ͨ�����⣬���ػ�ֻ��������ٶȼ�Сֵ
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

