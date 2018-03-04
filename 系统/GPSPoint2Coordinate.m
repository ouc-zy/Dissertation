function [ longitude , latitude ] = GPSPoint2Coordinate( Longitude , Latitude )
% 创建时间：2017.12.25
% 创建目的：将GPS经纬度转换成我们熟知的经纬度格式
    longitude=floor(Longitude/10000/60)+rem(Longitude/10000,60)/60;
    latitude=floor(Latitude/10000/60)+rem(Latitude/10000,60)/60;
end

