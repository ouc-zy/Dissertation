function RealTime = GPSTime2RealTime( GPSTime )
% 创建时间：2017.12.23
% 创建目的：GPS时间转换为实际时间（单位：天）,需要对输出datenstr(RealTime)
    RealTime=(GPSTime+8*3600)/86400+datenum(1970,1,1);
end

