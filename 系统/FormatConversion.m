function Dir = FormatConversion( Sta , Des , Num )
% ����ʱ�䣺2017.12.20
% ����Ŀ�ģ���ԭʼ����ת��Ϊ.mat��������
% ��Ӳ���Sta��Des
    % ɾ��DesĿ¼�������ļ�
    if exist(Des)
        rmdir(Des,'s');
    end
    mkdir(Des);
%     N=length(Dir);
%     for k=1:N
%         name=Dir(k).name;
%         delete([Des '\' name]);% ɾ��
%     end
    
    Dir=dir([Sta '\*.xlsx']);
    Dir=Dir(1:Num,:);
    N=length(Dir);
    Table=cell(N,1);
    for k=1:N
        name=Dir(k).name;
        pos=strfind(name,'-');
        fname=['x' num2str(k)];% ��һ�ַ�������<���кţ��������>���ձ�
        Table{k}=fname;
        order=sprintf('X=xlsread([Sta ''\\'' name]);');eval(order);
        save([Des '\' Table{k}],'X');
    end
    save([Des '\Table'],'Table');
end

