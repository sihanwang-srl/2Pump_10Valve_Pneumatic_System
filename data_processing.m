        index = find(a == '!');
        total_data = zeros(length(index)-1,11);
        
        for n = 1:length(index)-1
            
            readings = a((index(n)+1:index(n+1)));
            pos = [0 find(readings == ';') max(size(readings))];
            pressure = zeros(1,11);
            for i = 1:(length(pos)-1)
                pressure_temp = str2double(readings((pos(i)+1):pos(i+1)-1));
                pressure(i) = pressure_temp;
            end
            if length(pressure) == 11
            total_data(n,:) = pressure;
            end
        end
        
        total_data(:,11)=total_data(:,11)-total_data(1,11);
        
        for m=1:10
            total_data(:,m) = (total_data(:,m)-b(m))/1024*3.3*10;
        end
        
        