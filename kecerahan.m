image = imread ('daun.jpg');
#image = imread ('gelap.jpeg');
#image = imread ('bunga.jpg');
pkg load image;
#50 --> kecerahan
citraA = image;
b = 100;
[n,m] = size(image);

for i = 1 : n
  for j=1 : m
    data = image(i,j) - b;
    
    #cliping
    if data < 0
      citraA(i,j) = b;
    else
      if data > 255
        citraA(i,j) = 255;
      else
        citraA(i,j) = data;
      end
    end
  end
end



figure (1);
subplot(2,2,1); imshow(image); title('Gb. Citra Asli');
subplot(2,2,2); imhist(image);title('Histogram Asli');

subplot(2,2,3); imshow(citraA); title('Gb. Citra Cerah ');
subplot(2,2,4); imhist(citraA); title('Histogram Cerah ');

#figure(2);
#subplot(2,2,1); imshow(cerah2); title('Gb. Citra Cerah +100');
#subplot(2,2,2); imhist(cerah2); title('Histogram Cerah +100');

#subplot(2,2,3); imshow(cerah3); title('Gb. Citra Cerah +200');
#subplot(2,2,4); imhist(cerah3); title('Histogram Cerah +200');


clear
