# 'HT_1D_planar.py' from 'HT_1D_planar.m'
import numpy as np
import matplotlib.pyplot as plt

# One-dimensional heat transfer in planar geometry by finite differences.
#Equation to solve: rho*c*DT/Dt=k*D2T/Dx2+phi-rho*c*v*DT/Dx


#Data:          #Change data and see corresponding results
D=0.000        #Diametre or characteristic transversal dimension [m]
L=0.100        #Length along heat path [m]
A=0.15*1e-3    #Area. Direct input, or computed from diameter as A=pi*D^2/4 [m2]
p=2*0.15       #Perimeter. Direct input, or computed from diameter as p=pi*D [m]
k=0.25         #Conductivity [W/(m·K)]
c=700          #Thermal capacity [J/(kg·K)]
rho=1000       #Density [kg/m3]
h=2            #Convective coefficient [W/(m^2·K)], transversal
eps=0          #Emissivity, transversal
sigma=5.67e-8  #S-B constant
N=20           ## of elements along L
M=400          ## of time steps
Tinf=288       #Ambient temperature [K]
tsim=10000     #Total simulation time [s]
Troot=303      #Root temperature [K] in case it is fixed
Qroot=0        #Root heat transfer power [W] in case it is fixed
phi=5/(A*L)    #Volumetric dissipation [W/m^3] if any

#Inicialization:
a=k/(rho*c)             #Diffusivity [m^2/s]
Dx=L/N                  #Element width
X=np.linspace(0,L,N+1)  #Node position list (equispaced)
Dt=tsim/M               #Time step (you might fix it instead of tsim)
t=np.linspace(0,tsim,M) #Time vector
Fo=a*Dt/(Dx*Dx)         #Fourier's number
Bi=h*p*Dx/(k*A/Dx)      #Biot's number
#Check for stability of the explicit finite difference method
print(['Stability requires 1-Fo*(2+Bi)<0. It actually is =',str(1-Fo*(2+Bi))])
if (1-Fo*(2+Bi)) < 0:
    print('This is unstable increase number of time steps')
T=Tinf*np.ones((M+1,N+1+1)) 	#Temperature-matrix (times from 1 to M, and positions from 1 to N+1)

#Iteration:
for it in range(2,M):
    for i in range(2,N):
        T[it,i]=T[it-1,i]+Fo*(T[it-1,i+1]-2*T[it-1,i]+T[it-1,i-1])+Fo*Bi*(Tinf-T[it-1,i])+phi*Dt/(rho*c)
    #Boundory condition in node 0 (one of the following two):
    T[it,1]=Troot      #if Troot is fixed
    #T[it,1]=T[it,2]-Qroot*Dx/(2*k*A)   #if Qroot is fixed
    #Boundory condition in node N (one of the following two):
    T[it,N+1]=Troot    #if Troot is fixed
    #T[it,N+1]=T[it,N]-Qroot*Dx/(2*k*A)   #if Qroot is fixed

#Presentation of results
plt.subplot(2,1,1)
plt.plot(t,T[:,1])
plt.xlabel('t [s]')
plt.ylabel('T [K]')
plt.title('T(t,x) vs. t at several locations')
#subplot(2,1,2)plot(X,T(1:M/100:M,:))xlabel('X [m]'),ylabel('T [K]')title('T(t,x) vs. X at several times')
