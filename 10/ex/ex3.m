I = imread("ngc6543a.jpg");    % �摜�f�[�^�̓ǂݍ���
I = rgb2gray(I);    % �J���[�摜���O���C�X�P�[���摜�֕ϊ�
I = imresize(I, 0.25);    % �摜��1/4�{�ɏk��

J = imresize(I, 5, "Method", "nearest");    % �摜��5�{�g��
figure, imshow(J);                           % �摜�̕\��  
J = imresize(I, 5, "Method", "bilinear");    % �摜��5�{�g��
figure, imshow(J);                           % �摜�̕\��  
I = imresize(I, 5, "Method", "bicubic");    % �摜��5�{�g��
figure, imshow(J);                           % �摜�̕\��  




