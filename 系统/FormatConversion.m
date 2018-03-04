function Dir = FormatConversion( Sta , Des , Num )
% 创建时间：2017.12.20
% 创建目的：将原始数据转换为.mat类型数据
% 添加参数Sta，Des
    % 删除Des目录下所有文件
    if exist(Des)
        rmdir(Des,'s');
    end
    mkdir(Des);
%     N=length(Dir);
%     for k=1:N
%         name=Dir(k).name;
%         delete([Des '\' name]);% 删除
%     end
    
    Dir=dir([Sta '\*.xlsx']);
    Dir=Dir(1:Num,:);
    N=length(Dir);
    Table=cell(N,1);
    for k=1:N
        name=Dir(k).name;
        pos=strfind(name,'-');
        fname=['x' num2str(k)];% 另一种方法给出<序列号，船舶编号>对照表
        Table{k}=fname;
        order=sprintf('X=xlsread([Sta ''\\'' name]);');eval(order);
        save([Des '\' Table{k}],'X');
    end
    save([Des '\Table'],'Table');
end

