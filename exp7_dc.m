clc; close all; clear all;
p = [1 1 0;
 0 1 1;
 1 1 1;
 1 0 1]
n = 7
k = 4
g = [p eye(k)]
h = [eye(n-k) p']
d = [0:2^k-1]
m = de2bi(d,4,'left-msb')
c = mod(m*g, 2)
r = [1 0 0 1 0 0 1]
'H Transpose'
h'
s = mod(r*h', 2)