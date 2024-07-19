% 1次元信号で確認
t = 0:1 / 800:1;    % 0〜1まで1/800秒刻みのサンプル
y = 10 * sin(2 * pi * t);  % 振幅10，周波数1Hzの正弦波信号 
plot(t, y);                 % 信号をサンプル点ごとにプロット
grid on;    % グラフにグリッド線を追加
xlabel('time (s)');    % グラフのX軸に'time (s)'ラベル追加
hold on;    % グラフ追加モード
t = 0:1 / 50:1;    % 0〜1まで1/50秒刻みのサンプル点
y = round(10*sin(pi*2*t));  % yを整数で丸める
plot(t,y,"-ro");             % 赤○のマーカーでプロット

% グラデーションで確認
t = 0:1 / 800:1;    % 0〜1まで1/800秒刻みのサンプル点
y = 10 * sin(2 * pi * t);    % 振幅10，周波数1Hzの正弦波信号 
figure, imagesc(y);         % スケーリングした色によるイメージの表示
colormap(gray);             % grayscaleのカラーマップ表示
t = 0:1 / 50:1;    % 0〜1まで1/50秒秒刻みのサンプル点
y = round(10 * sin(pi * 2 * t));    % yを整数で丸める
figure, imagesc(y);   % スケーリングした色によるイメージの表示
colormap(gray);    % grayscaleのカラーマップ表示

