% Erceg Model
%References: 
%[1] https://www.mathworks.com/matlabcentral/fileexchange/39322-erceg-model
%[2] https://www.cs.wustl.edu/~jain/wimax/ftp/channel_model_tutorial.pdf

clc;
close all;
clear all;
d0 = 100;
Xrho = 6;
hb = input('Enter base station ant. ht(10-80m))');
f = input('Enter Carrier Frequency(close to 2000MHz)');
d = 1:1:10000;
a = [4.6 4 3.6];
b = [0.0075 0.0065 0.005];
c = [12.6 17.1 20];
for i = 1:3
y(i) = a(i) - b(i)*hb + c(i)/hb;
end;
Lp1 = 20*log10(4*pi*d0*f/300) + 10*y(1)*log10(d/d0) + Xrho;
Lp2 = 20*log10(4*pi*d0*f/300) + 10*y(2)*log10(d/d0) + Xrho;
Lp3 = 20*log10(4*pi*d0*f/300) + 10*y(3)*log10(d/d0) + Xrho;
figure(1); 
plot(d, Lp1, 'r'); 
hold on; 
plot(d, Lp2, 'b');
hold on; 
plot(d, Lp3, 'g');
hold on; 
legend('Type A', 'Type B', 'Type C'); 
grid on;
xlabel('d [m]');
ylabel('L [dB]');
title('Erceg Model for Typical environments');