t = 0:1/32000:1;    % 1秒を32000に分割
do = 0.1 * sin (2 * pi() * 523.3 / 2* t);    % ド正弦波の生成
re = 0.2 * sin (2 * pi() * 587.3 / 2 * t);    % レ正弦波の生成
mi = 0.3 * sin (2 * pi() * 659.3 / 2 * t);    % ミ正弦波の生成
fa = 0.4 * sin (2 * pi() * 698.3 / 2 * t);    % ファ正弦波の生成

t = 0:1 / 32000:2;    % 2秒を32000に分割
so = 0.5 * sin (2 * pi() * 784.0 / 2* t);    % ソ正弦波の生成
ra = 0.6 * sin (2 * pi() * 880.0 / 2 * t);    % ラ正弦波の生成
shi = 0.7 * sin (2 * pi() * 493.9 * t);    % シ正弦波の生成
do_high = 0.8 * sin (2 * pi() * 523.3 * t);    % ド正弦波の生成

Y = horzcat(do, re, mi, fa, so, ra, shi, do_high);    % 時間軸で連結
sound(Y, 32000);    % 音を鳴らす