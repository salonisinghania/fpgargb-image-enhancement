% Step 1: Read and resize image to 768x512
original_img = imread('kodim27.bmp');
resized_img = imresize(original_img, [512, 768]);  % Resize to 512 (height) x 768 (width)

% Step 2: Convert to hex format (RGB888), written bottom to top
k = 1;
a = zeros(1, 768 * 512 * 3);  % Preallocate for speed

for i = 512:-1:1  % Bottom to top
    for j = 1:768  % Left to right
        a(k) = resized_img(i,j,1);   % Red
        a(k+1) = resized_img(i,j,2); % Green
        a(k+2) = resized_img(i,j,3); % Blue
        k = k + 3;
    end
end

% Step 3: Write to HEX file (each byte as 2-digit hex)
fid = fopen('kodim27.hex', 'wt');
fprintf(fid, '%02x\n', a);
fclose(fid);

disp('Image resized to 768x512 and hex file created successfully.');
