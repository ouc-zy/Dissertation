function [ ] = System( pathname )
% ����ʱ�䣺2017.12.20
% ����Ŀ�ģ�����ϵͳ���У��ݹ���ø�������
    Sta=[pathname '\Excel'];
    Des=[pathname '\Rawdata'];
    Initialization(Sta,Des);
    PortLocation(Des);
    
    VoyageDivision( Des );
    tic;
    FishingAreaIdentification( Des )
    toc;
end

