function distance = SphericalDistance( longitude , latitude )
% ����ʱ�䣺2017.12.23
% ����Ŀ�ģ������������(����)
    earth_radius=6372; %����뾶
    
    distance=earth_radius*acos(cos(latitude(1:end-1)*pi/180).*cos(latitude(2:end)*pi/180)...
        .*cos(abs(diff(longitude))*pi/180)+sin(latitude(1:end-1)*pi/180)...
        .*sin(latitude(2:end)*pi/180));
    distance=abs(distance)/1.852;
end

