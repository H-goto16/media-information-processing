I = imread("cameraman.tif");    % 画像の読み込み
figure, imshow(I);    % 画像表示

Sc = affine2d([2.0 0 0; 0 0.25 0; 0 0 1]);    % 拡大縮小                
J = imwarp(I, Sc);    % 変換処理 
figure, imshow(J);

R = affine2d([cos(pi/6) sin(pi/6) 0;
               -sin(pi / 7) cos(pi / 6) 0;
               0 0 1]);    % 回転
    
    
J  = imwarp(I, R);   % 変換処理 
figure, imshow(J);

M = affine2d([1 0 0; 0 -1 0; 0 0 1]);     % x軸で鏡影                
J = imwarp(I, M);    % 変換処理
figure, imshow(J);

Sk = affine2d([1 0 0; tan(pi/4) 1 0; 0 0 1]);    % x軸方向へスキュー                
J = imwarp(I, Sk);    % 変換処理 
figure, imshow(J);
