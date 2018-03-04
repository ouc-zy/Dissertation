function matrix = Track2Matrix( track,North,South,East,West,step)
% 创建时间：2018.01.07
% 创建目的：将轨迹映射到矩阵上
    Row=floor((North-South)*step)+1;
    Column=floor((East-West)*step)+1;
    matrix=zeros(Row,Column);

    L=size(track,1);
    for i=1:L
        longitude=track(i,1);
        latitude=track(i,2);
        x=floor((longitude-West)*step)+1;
        y=floor((latitude-South)*step)+1;
        matrix(y,x)=matrix(y,x)+1;
    end
end