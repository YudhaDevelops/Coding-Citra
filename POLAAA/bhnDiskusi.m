clear;
N = 10;  % number of training samples
data = [randn(N/2,2)*50+200 ; randn(N/2,2)*50+300]; %menghasilkan data random
labels = int32([ones(N/2,1)*1; ones(N/2,1)*2]);

jarak=zeros(9,1);
for i = 1:9
    jarak(i)=sqrt((data(10,1)-data(i,1))^2+(data(10,2)-data(i,2))^2);
endfor
for i = 1:9
    jarak(i,2)=labels(i);
endfor

hasilhitung=sortrows (jarak, [1]);

k=3;
ketemuLabel=mode(hasilhitung(1:k,2));

if (ketemuLabel == labels(10))
    disp ("sama");
else
    disp ("beda");
endif

