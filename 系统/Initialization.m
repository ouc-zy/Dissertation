function [ Dir , StTime , EdTime ]= Initialization( Sta , Des , Num)
% ����ʱ�䣺2017.12.20
% ����Ŀ�ģ����洬ԭʼ���ݽ���Ԥ����
% ���룺ԭʼ����
% �������\Rawdata�ļ����´���ÿ�Ҵ���.mat��������

% ���ݸ�ʽת���������ݶ��Ǵ�.xls->.mat
    Dir=FormatConversion(Sta,Des,Num);
% ��������ת��
    RawDataTransformation(Des);
% ������ϴ
    [ StTime , EdTime ]=RawDataCleaning(Des);
% ���ݱ߽�
    GetBoundary(Des);
% ���ݿ��ӻ���δ���壩
    RawDataVisualization();

end

