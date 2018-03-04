function [ Dir , StTime , EdTime ]= Initialization( Sta , Des , Num)
% 创建时间：2017.12.20
% 创建目的：对渔船原始数据进行预处理
% 输入：原始数据
% 输出：在\Rawdata文件夹下创建每艘船的.mat类型数据

% 数据格式转换，这里暂定是从.xls->.mat
    Dir=FormatConversion(Sta,Des,Num);
% 数据内容转换
    RawDataTransformation(Des);
% 数据清洗
    [ StTime , EdTime ]=RawDataCleaning(Des);
% 数据边界
    GetBoundary(Des);
% 数据可视化（未定义）
    RawDataVisualization();

end

