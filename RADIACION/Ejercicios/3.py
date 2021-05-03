from materials import SolarCells as SC
from materials import CFRP as Comp
from materials import AL_5056 as HC
from Planets_and_moons import Earth

from numpy import sin, deg2rad, tan

sigma = 5.67e-8

#Considérese un panel solar de 1×2 m2 desplegado en un satélite geoestacionario y orientado al Sol. El panel
#consta de una lámina de células solares de 30 % de rendimiento eléctrico y 0,5 mm de espesor (incluyendo la
#capa protectora antirreflectante y el adhesivo), pegada sobre un panel en nido de abeja formado por celdas
#hexagonales de 8 mm de separación, 25 µm de espesor de lámina de aluminio (Al-5056), y 15 mm de altura entre
#capas de fibra de carbono (CFRP) de 0,25 mm de espesor. Con los datos de la Tabla adjunta, y despreciando la
#influencia del resto del satélite, calcular:

A = 1*2
eta = 0.3
SC.delta = 0.5e-3
HC.s = 8e-3
HC.d = 25e-6
HC.delta = 15e-3
Comp.delta = 0.25e-3

print('*** a ***')
#a) La temperatura estacionaria considerando dos nodos, despreciando la radiación dentro del panel.

R12 = SC.k * A / SC.delta
R23 = Comp.k[1] * A / Comp.delta
R34 = (HC.k * 8/3 * HC.d/HC.s) * A / HC.delta
R45 = R23

L = SC.delta + Comp.delta * 2 + HC.delta

K15 = L/A * (1/R12+1/R23+1/R34+1/R45)**-1
k = K15

from scipy.optimize import fsolve

Qs = (SC.alpha-eta) * Earth.E * A
Q12 = lambda T1,T2: k * A/L * (T1-T2)
m1 = lambda T: SC.epsilon * sigma * (T**4-2.7**4) * A
m2 = lambda T: Comp.epsilon * sigma * (T**4-2.7**4) * A

def equations(p):
    T1, T2 = p
    eq1 = Qs - Q12(T1,T2) - m1(T1)
    eq2 = + Q12(T1,T2) - m2(T2)
    return [eq1,eq2]

T1, T2 = fsolve(equations, (273,273))

print('T1 =',T1,'K')
print('T2 =',T2,'K')

T1 = 298
T2 = 293

print('*** b ***')
#b) Transmisión de calor por radiación interior en el panel suponiendo que la lámina de aluminio fuese
#especular, y comparación con la conducción del aluminio.

Qcond = Q12(T1,T2)
R13 = 1/(R12**-1+R23**-1)
T3 = T1-Qcond/R13

T4 = T2+Qcond/R45

# Exitancias
F = (1-8/3 * HC.d/HC.s)

R1 = (1-Comp.epsilon) / (Comp.epsilon * A)
R2 = 1/(F*A)
R3 = R1
m1bb = sigma * T2**4
m2bb = sigma * T1**4

Qrad12 =  (m2bb-m1bb)/(R1+R2+R3)

print('Qrad12 =',Qrad12,'W')

Qcon12 = k * A/L* (T1-T2)

print('Qcon12 =',Qcon12,'W')


print('*** c ***')
#c) Para una celdilla del panel, factor geométrico entre las bases aproximando el prisma hexagonal por un
#cilindro.

r = 4e-3

F12 = 1+(1-(4*r**2+1)**0.5)/(2*r**2)

print('F12 =',F12)

print('*** d ***')
#d) Considerando que el prisma hexagonal fuese suficientemente esbelto para despreciar el efecto de las
#bases, determinar todos los factores geométricos entre sus caras.

alpha=deg2rad(120)
F12 = 1-sin(alpha/2)

W = HC.s/3**0.5
H = HC.s
h = H/W
F14 = (h**2+1)**0.5-h

F13 = (1-2*F12-F14)/2

print('F12 =',F12)
print('F13 =',F13)
print('F14 =',F14)

print('*** e ***')
#e) Suponiendo conocidos todos los factores geométricos del prisma real (no infinitamente largo), y las
#temperaturas de las bases (T1 y T2), plantear las ecuaciones que permiten resolver el problema de tres
#nodos (i.e. base 1, caras laterales 3, y base 2), en el caso general de superficies grises, especificando las
#incógnitas.

F12 = 0.06
F13 = F23 = 0.94

A_base = (HC.s/2)**2*tan(deg2rad(30))*6
A_lateral = HC.delta * HC.s*tan(deg2rad(30)) *2

R12 = R21 = 1/A_base*F12
R13 = R31 = R23 = R32 = 1/(A_lateral*F13)

R1bb = R2bb = (1-Comp.epsilon)/(A_base*Comp.epsilon)

m1bb = sigma*T1**4
m2bb = sigma*T2**4

def equations(p):
    m1,m2,m3 = p
    eq1 = (m1-m1bb) / R1bb - (m2-m1) / R12 - (m3-m1) / R13
    eq2 = (m2-m2bb) / R2bb - (m1-m2) / R21 - (m3-m2) / R23
    eq3 = 0                - (m1-m3) / R31 - (m2-m3) / R32
    return [eq1, eq2, eq3]

m1,m2,m3 = fsolve(equations,(m1bb,m2bb,(m1bb+m2bb)/2))

T3 = (m3/sigma)**0.25

print('T3',T3,'K')
