Img = imread('C:\Users\LENOVO\Downloads\Pemandangan.jpg');
[tinggi, lebar] =  size(Img);

data = double(Img);
for baris = 2 : tinggi-1
    for kolom = 2 : lebar - 1
        jum = [data(baris-1, kolom-1)
              data(baris-1, kolom)
              data(baris-1, kolom+1)
              data(baris, kolom-1)
              data(baris, kolom)
              data(baris, kolom+1)
              data(baris+1, kolom-1)
              data(baris+1, kolom)
              data(baris+1, kolom+1)];

         for i=1 : 8
             for j=i+1 : 9
                 if jum(i) > jum(j)
                     tmp = jum(i);
                     jum(i) = jum(j);
                     jum(j) = tmp;
                 end
             end
         end

         g = double(jum(5));
  end
end

ambang = g;
biner = zeros(tinggi, lebar);
for baris=1 : tinggi
    for kolom=1 : lebar
        if Img(baris, kolom) < ambang
           Biner(baris, kolom) = 0;
        else
           Biner(baris, kolom) = 1;
        end
    end
end
figure(1);
subplot(2,2,1), imshow(Img);
subplot(2,2,2), imshow(Biner);
