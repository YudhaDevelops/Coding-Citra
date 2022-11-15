gambar = imread("C:/Users/admin/Desktop/Yudha/blur.jpg");

[m,n] = size(gambar);
gambarA = gambar;
dataA = double(gambarA);

# kepimg 1
for i = 2 : m - 1
  for j = 2 : n - 1
    jumlah = dataA(i -1, j) + dataA(i, j-1) + dataA(i, j+1) + dataA(i +1, j) + ...
             dataA(i-1,j-1) + dataA(i+1, j+1) + dataA(i-1,j+1)+dataA(i+1, j-1);
    rata_rataA = jumlah/9;
    gambarA(i,j) = rata_rataA;
    
  endfor
endfor

gambar3 = uint8(gambarA);

figure (2) : imshow (gambar);
subplot(1,2,1); imshow(gambar); title('Gb. Citra Asli');
subplot(1,2,2); imshow(gambar3); title('Gb. Citra Rerata');