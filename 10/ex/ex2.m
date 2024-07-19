I = imread('cameraman.tif');                    % �摜�̓ǂݍ���
figure, imshow(I);                              % �摜�\��

E_array = [ 1 0 0;    % ���s�ړ��s��
            0 1 0;
            10 20 1];
    
E = affine2d(E_array);    % ���[�N���b�h�ϊ�
J = imwarp(I, E);    % �ϊ����u 
figure, imshow(J);

J = imtranslate(I, [10 20]);    % ���s�ړ�
figure, imshow(J);

