clc
clear all

%Parametros generales
rho=1000; %Densidad kg/m3
mu_l=1.13*10^-3; %Viscosidad Dinámica 
mu_g=20*10^-8; %Viscosidad Dinámica 

sigma=32*10^-3; %Tensión superficial N/m
Patm=101325; %Presion atmosférica para el caso de canales cerrados en sus extremos
theta_vidrio=25*(2*3.14/360); %Angulo de contacto Vidrio en grados
theta_plast=80*(2*3.14/360); %Angulo de contacto Plastico en grados

h=50*10^-6; %Altura del canal 1 en m
w=1*10^-3; %Ancho del canal 1 en m

Area=h*w;

cos_theta=(h/(h+w)*cos(theta_plast))+(w/(h+w)*cos(theta_vidrio));
gamma=sigma*2*(h+w)/(h*w);
kappa=12/(h^2)*(1/(1-(0.63*h/w)));

L1=30E-3;
L2=50E-3;
L3=70E-3;

cte=kappa*mu_l/2/gamma/cos_theta;

t1=(L1^2)*cte;
t2=((L2^2+(4*L1*L2))*cte)+t1;
t3=( (L3^2+(2*L1*(L3-L2))-L2^2 )*cte)+t2;