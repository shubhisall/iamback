sgtitle('Basic Functions');
subplot(3, 2, 4);
n = 0:1:10;
y = sin(0.2*pi*n);
stem(n, y, 'b', 'filled');
xlabel('Time sample');
ylabel('Amplitude');
title('Sine Function');
subplot(3, 2, 5);
n = 0:1:10;
y = cos(0.2*pi*n);
stem(n, y, 'b', 'filled');
xlabel('Time sample');
ylabel('Amplitude');
title('Cosine Function');
subplot(3, 2, 1);
n = -5:1:5;
y = n==0;
stem(n, y, 'b', 'filled');
xlabel('Time sample');
ylabel('Amplitude');
title('Impulse Function');
subplot(3, 2, 3);
n = -5:1:10;
ramp_n = (n >= 0) .* n;
stem(n, ramp_n, 'b', 'filled');
xlabel('Time Sample');
ylabel('Amplitude');
title('Unit Ramp Function');
subplot(3, 2, 2);
n = -5:1:10;
y2 = (n>=0);
stem(n, y2, 'b', 'filled');
xlabel('Time sample');
ylabel('Amplitude');
title('Unit Function');


