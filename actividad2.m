%actividad 2

num3 = [0 0 4 10]; % 4s+10
den3 = [4 9 5 0];  % 4s³+9s²+5s

[s_num1, s_den1] = cloop(num3, den3,+1);

num4 = [0 0 0 1];  % 1
den4 = [0 0 7 10]; %7s + 10

num5 = [0 0 8 8];  % 8s + 8
den5 = [1 2 3 0];  % s³+2s²+3s

[s_num2, s_den2] = parallel(num4, den4, num5, den5);

num6 = [0 0 3 2];  % 3s + 2
den6 = [0 5 7 10]; % 5s² + 7s +10

[s_num3, s_den3] = series(s_num1, s_den1, s_num2, s_den2);

[s_num3, s_den3] = series(s_num3, s_den3, num6, den6);

num1 = [0 0 4 0];  % 4s
den1 = [0 10 0 4]; % 10s² + 4

num2 = [0 0 0 3];  % 3
den2 = [0 0 6 16]; % 6s + 16

[s_num4, s_den4] = parallel(num1, den1, num2, den2);

[s_num4, s_den4] = parallel(s_num4, s_den4, s_num3, s_den3);

final_y = step(s_num4, s_den4);

final_x = linspace(1, 70, length(final_y));

loglog(final_x, final_y)
