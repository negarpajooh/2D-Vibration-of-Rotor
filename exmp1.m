clear;
clc;
close all
%% cte
m1=50;
m2=2;
m3=m2;
m4=m2;
m5=m2;
L=2;
k1=10000;
k2=10000;
c1=10;
c2=10;
g=10;
rs=35e-3;
rd1=225e-3;
rd2=rs;
%% input
fext=-.1;
t=0:0.01:10;
% u=[ones(1,numel(t));fext.*ones(1,numel(t))];
% u=[ones(1,numel(t));fext.*sin(0.5.*t)];
% u=[ones(1,numel(t));rand(1,numel(t)).*ones(1,numel(t))];
%% sys1
A1=[0,1;-(k1+k2)/m1,-(c1+c2)/m1];
B11=[0;(m1+1*m2)*g/m1];
B12=[0;1/m1];
B1=[B11,B12];
C1=eye(2);
D1=zeros(size(B1,1),size(B1,2));
sim('prob1')
%%
figure
subplot(221)
plot(time,force)
grid minor
xlabel('time - sec')
ylabel('Force - N')
subplot(222)
plot(time,torque)
grid minor
xlabel('time - sec')
ylabel('\tau - N.m')
subplot(223)
plot(time,y)
grid minor
xlabel('time - sec')
ylabel('y - m')
subplot(224)
plot(time,teta)
grid minor
xlabel('time - sec')
ylabel('\theta - rad')
