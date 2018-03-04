function distance = SphericalDistance( longitude , latitude )
% 创建时间：2017.12.23
% 创建目的：计算球面距离(海里)
    earth_radius=6372; %地球半径
    
    distance=earth_radius*acos(cos(latitude(1:end-1)*pi/180).*cos(latitude(2:end)*pi/180)...
        .*cos(abs(diff(longitude))*pi/180)+sin(latitude(1:end-1)*pi/180)...
        .*sin(latitude(2:end)*pi/180));
    distance=abs(distance)/1.852;
end

