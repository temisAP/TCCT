from Planets_and_moons import Sun, Mars
from ThermoOpticals import b,w
from numpy import deg2rad
from math import cos
import numpy as np
from scipy.optimize import fsolve

sigma = 5.67e-8

# Considérese un panel of 1·0.5·0.01 m3 desplegado de un satélite orbitando Marte (a 1.5 ua del Sol), a 300 km de
# altitud sobre el punto subsolar, con la normal a sus caras formando 30º con los rayos solares. Despreciar el efecto
# de otras partes del satélite, y suponer que la cara iluminada es blanca y lo otra negra. Las propiedades volumétricas
# del panel son ρ=50 kg/m3 , c=1000 J/(kg·K), y k=0.01 W/(m·K). Se pide:

A = 1*0.5
delta = 0.01
h = 300e3
beta = deg2rad(30)
rho = 50
c = 1000
k = 0.01


print('*** a ***')
# a) La irradiancia solar y la potencia solar absorbida.

Essurface  = sigma*Sun.T**4
EsM        = Essurface * (Sun.R/Mars.d)**2
EsM        = Mars.E
print('EsM =',EsM,'W/m2')

Qsi = w.alpha * EsM * A * cos(beta)

print('Qsi =',Qsi,'W')

print('*** b ***')
# b) Las cargas térmicas provenientes del planeta.

Fip = cos(beta)/((h+Mars.R)/Mars.R)

Qa = b.alpha * (Mars.rho * Mars.E) * A * Fip
Qp = b.epsilon * (Mars.epsilon*sigma*Mars.T**4)*A*Fip

print('Qp =',(max(Qp)+min(Qp))/2 ,'+-',(max(Qp)-min(Qp))/2, 'W')
print('Qa =',(max(Qa)+min(Qa))/2 ,'+-',(max(Qa)-min(Qa))/2, 'W')

print('*** c ***')
# c) La potencia que emite la placa, suponiendo que está a temperatura uniforme, T0, y en el caso de que las
# caras estén a diferente temperatura, T1 y T2.

m1 = lambda T1: w.epsilon * A * sigma * T1**4
m2 = lambda T2: b.epsilon * A * sigma * T2**4

print('m1 =', m1)
print('m2 =', m2)

print('*** d ***')
# d) Los valores de T0, T1 y T2 si la placa estuviese en estado estacionario.

Qp = 39
Qa = 32


def equations(p):
    T0 = p
    eq1 = Qsi - m1(T0) -m2(T0) + Qp + Qa
    return eq1

T0 = fsolve(equations,(273))[0]

print('T0 =',T0,'K')

def equations(p):
    T1, T2 = p
    eq1 = Qsi - m1(T1) + k*A*(T2-T1)/delta
    eq2 = Qp + Qa - m2(T2) + k*A*(T1-T2)/delta
    return [eq1,eq2]

T1, T2 = fsolve(equations,(273,273))

print('T1 =',T1,'K')
print('T2 =',T2,'K')


# e) La evolución de la temperatura al entrar en eclipse (supóngase como estado inicial la T0 anterior).

Dt = 10
time = np.arange(0,2000,Dt)
m = A*delta*rho /2

T1 = T0*np.ones(len(time))
T2 = T0*np.ones(len(time))

for t in range(len(time)):
    try:
        T1[t+1] = T1[t] + Dt/(m*c) * (k*A*(T2[t]-T1[t])/delta-m1(T1[t]))
        T2[t+1] = T2[t] + Dt/(m*c) * (k*A*(T1[t]-T2[t])/delta-m2(T2[t])+Qp)
    except:
        a=0


import matplotlib.pyplot as plt


fig = plt.figure()
plt.plot(time,T1)
plt.plot(time,T2)
plt.xlabel('time [s]', horizontalalignment='right', x=1.0)
plt.ylabel('T[K]', horizontalalignment='right', y=1.0).set_rotation(0)
plt.title('Evolución de temperatura')
plt.legend(['T1','T2'])
plt.grid()
plt.show()
