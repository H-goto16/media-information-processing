I = imread('coins.png');            % ζΜΗέέ
I = imnoise(I, 'salt & pepper');    % ²άmCY
figure, imshow(I);                  % ζΜ\¦

thresh = graythresh(I);             % »ΚͺΝ@Ιζθθlπθ
I = I > thresh*256;                 % threshπp’Δ2lζΜΆ¬
figure, imshow(I);                  % ζΜ\¦

se = strel("disk", 1);    % Όa1i1.5jΜ~Μ\’vf

% opening ϋk^c£ 1ρ
J = imerode(I, se);    % ϋk
figure, imshow(J);                  % ζΜ\¦
K = imdilate(J, se);    % c£
figure, imshow(K);                  % ζΜ\¦

% opening c£^ϋk 2ρ
J = imerode(I, se);    % ϋk
J = imerode(J, se);    % ϋk
figure, imshow(J);                  % ζΜ\¦
K = imdilate(J, se);    % c£
K = imdilate(K, se);    % c£
figure, imshow(K);                  % ζΜ\¦
