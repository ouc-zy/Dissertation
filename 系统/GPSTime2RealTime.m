function RealTime = GPSTime2RealTime( GPSTime )
% ����ʱ�䣺2017.12.23
% ����Ŀ�ģ�GPSʱ��ת��Ϊʵ��ʱ�䣨��λ���죩,��Ҫ�����datenstr(RealTime)
    RealTime=(GPSTime+8*3600)/86400+datenum(1970,1,1);
end

