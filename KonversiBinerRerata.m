Img = imread('C:\Users\LENOVO\Downloads\Pemandangan.jpg');
[tinggi, lebar] =  size(Img);

olah = double(Img);
for baris = 2: tinggi -1;
  for kolom = 2: lebar -1;
      jum = olah(baris -1, kolom)+...
            olah(baris, kolom -1)+...
            olah(baris, kolom + 1)+...
            olah(baris + 1, kolom)+...
            olah(baris - 1, kolom -1)+...
            olah(baris - 1, kolom + 1)+...
            olah(baris + 1, kolom +1)+...
            olah(baris + 1, kolom -1)+...
            olah(baris, kolom);

            b = double(jum * 1/9);
  end
end

ambang = b;
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
