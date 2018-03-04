function [ ] = System( pathname )
% 创建时间：2017.12.20
% 创建目的：整个系统运行，递归调用各个方法
    Sta=[pathname '\Excel'];
    Des=[pathname '\Rawdata'];
    Initialization(Sta,Des);
    PortLocation(Des);
    
    VoyageDivision( Des );
    tic;
    FishingAreaIdentification( Des )
    toc;
end

