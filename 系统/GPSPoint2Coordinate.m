function [ longitude , latitude ] = GPSPoint2Coordinate( Longitude , Latitude )
% ����ʱ�䣺2017.12.25
% ����Ŀ�ģ���GPS��γ��ת����������֪�ľ�γ�ȸ�ʽ
    longitude=floor(Longitude/10000/60)+rem(Longitude/10000,60)/60;
    latitude=floor(Latitude/10000/60)+rem(Latitude/10000,60)/60;
end

