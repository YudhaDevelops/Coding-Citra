Img = imread('IMG_1149.jpg');
[tinggi, lebar] =  size(Img);

ambang = 128; % Nilai ini bisa diubah-ubah
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

figure(2);
subplot(2,2,1), imshow(Img);
subplot(2,2,2), imshow(Biner);
