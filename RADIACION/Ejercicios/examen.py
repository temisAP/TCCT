from materials import AL_5056 as Al
from Planets_and_moons import Earth
from ThermoOpticals import black as b
from math import pi, cos
from numpy import deg2rad
from scipy.optimize import fsolve

sigma = 5.67e-8

D = 0.2
r = D/2
A = 4*pi*(D/2)**2
Afront = (pi * (D/2)**2)
delta = 1e-3
h_LEO = 300e3
Tinf = 2.7

### a

print('*** a ***')

h = (h_LEO + Earth.R)/Earth.R
F = 0.5 * (1-(1-h**-2)**0.5)
print('F =', F)

Qs = b.alpha * Earth.E * Afront
Qa = b.alpha * (Earth.rho * Earth.E) * A * F
Qp = b.epsilon * (Earth.epsilon*sigma*Earth.T**4)*A*F

print('Qs =',Qs,'W')
print('Qa =',Qa,'W')
print('Qp =',Qp,'W')

Qsum = Qs+Qa+Qp
Tsum = (Qsum/(b.epsilon*sigma*A*(1-F)) + Tinf**4)**0.25

print('Todas: T =',Tsum,'K')

Qsum = Qs
Tsol = (Qsum/(b.epsilon*sigma*A*(1-F)) + Tinf**4)**0.25
print('Sol  : T =',Tsol,'K')

### b

print('*** b ***')

A1 = A3 = 2*pi*(r*cos(deg2rad(45))) * (r-r*cos(deg2rad(45)))
A2 = A-A1-A3

Qs1 = b.alpha * Earth.E * ( pi * (r*cos(deg2rad(45)))**2 )
Qs2 = b.alpha * Earth.E * ( pi * (r**2 - (r*cos(deg2rad(45)))**2) )

print(Qs-Qs1-Qs2)

Qa3 = b.alpha * (Earth.rho * Earth.E) * A3 * F
Qa2 = b.alpha * (Earth.rho * Earth.E) * A2 * F

print(Qa-Qa3-Qa2)

Qp3 = b.epsilon * (Earth.epsilon*sigma*Earth.T**4) * A3 * F
Qp2 = b.epsilon * (Earth.epsilon*sigma*Earth.T**4) * A2 * F

print(Qp-Qp3-Qp2)

Aeff = ( pi * (r*cos(deg2rad(45))**2 - (r*cos(deg2rad(45))-delta)**2) )
L = pi/4 * r
k = Al.k

Qr1 = lambda T: b.epsilon * A1 * sigma * (T**4-Tinf**4)
Qr2 = lambda T: b.epsilon * A2 * sigma * (T**4-Tinf**4) * (1-F/2)
Qr3 = lambda T: b.epsilon * A3 * sigma * (T**4-Tinf**4) * (1-F/2)

def equations(p):
    T1, T2, T3 = p
    eq1 = Qs1             - Qr1(T1) - k*Aeff*(T1-T2)/L
    eq2 = Qs2 + Qp2 + Qa2 - Qr2(T2) + k*Aeff*(T1-T2)/L
    eq3 = Qa3 + Qp3       - Qr3(T3) - k*Aeff*(T3-T2)/L
    return [eq1,eq2,eq3]

T1, T2, T3 = fsolve(equations,(Tsum,Tsum,Tsum))

print('T1 =',T1,'K')
print('T2 =',T2,'K')
print('T3 =',T3,'K')

### c

print('*** c ***')

m = (4/3 * pi * r**3 - 4/3 * pi * (r-delta)**3) * Al.rho /2
c = Al.c

print('m =',m)
print('c =',c)

### d

print('*** d ***')

A1 = A2 = A/2

Qr1ext = lambda T: b.epsilon * A1 * sigma * (T**4-Tinf**4)
Qr1int = lambda T1, T2: b.epsilon * A1 * sigma * (T1**4-T2**4)

Qr2ext = lambda T: b.epsilon * A2 * sigma * (T**4-Tinf**4) * (1-F/2)
Qr2int = lambda T1, T2: b.epsilon * A1 * sigma * (T2**4-T1**4)

def equations(p):
    T1, T2 = p
    eq1 = Qs      - (Qr1ext(T1) + Qr1int(T1,T2) )
    eq2 = Qp + Qa - (Qr2ext(T1) + Qr2int(T1,T2) ) 
    return [eq1,eq2]

T1, T2 = fsolve(equations,(Tsum,Tsum))

print('T1 =',T1,'K')
print('T2 =',T2,'K')
