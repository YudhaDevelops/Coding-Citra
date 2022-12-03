pkg load image;
clear;

asli = imread("mangga4.jpg");
biner = im2bw(asli);
[baris, kolom] = size(biner);
atasBawah = 0; a = 1;
kiriKanan = 0; b = 1;

for i = 1 : baris
  for j = 1 : kolom
    if biner(i,j) == 0
      atasBawah(a) = i;
      a++;
    end
  end
end
top = min(atasBawah);
bottom = max(atasBawah);

for i = 1 : kolom
  for j = 1 : baris
    if biner(j,i) == 0
      kiriKanan(b) = i;
      b++;
    end
  end
end
left = min(kiriKanan);
right = max(kiriKanan);

crop = biner(top:bottom, left:right, :);

figure(1);
subplot(2,2,1); imshow(asli); title("Asli");
subplot(2,2,2); imshow(biner); title("Biner");
subplot(2,2,3); imshow(crop); title("Crop");
clear;
