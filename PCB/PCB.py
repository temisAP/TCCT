import numpy as np
from math import exp
import matplotlib.pyplot as plt
from cycler import cycler
monochrome = (cycler('color', ['k']) * cycler('marker', ['', '.']) *
              cycler('linestyle', ['-', '--', ':','-.']))


### ENUNCIADO ###
## Considérese una tarjeta electrónica (PCB) de 140×100×1,5 mm3 de FR-4, con un recubrimiento de 50 µm de
## cobre por cada lado, que en una de las caras es continuo, y en la otra sólo ocupa el 10% de la superficie, en la
## cual van montados tres circuitos integrados (IC), cada uno de 40×20×3 mm3
## , disipando 5 W, con kIC=50 W/(m·K)
## de conductividad térmica, CIC=20 J/K de capacidad térmica, y distribuidos uniformemente en la PCB (20 mm de
## separación entre ellos). Se supondrá que los lados cortos de la PCB tienen contacto térmico perfecto con paredes
## permanentemente a 25 ºC, y que los otros dos bordes están térmicamente aislados. Tómese para el FR-4 k=0,5
## W/(m·K) en el plano y la mitad a su través. Se pide:

class elemento(objects):

    def __init__(self):
        # Atributos geométricos
        self.Lx = ''
        self.Ly = ''
        self.Lz = ''

        # Atributos térmicos
        self.k = ''
        self.kxy = ''
        self.kx = ''
        self.ky = ''
        self.kz = ''

        self.c = ''

        self.W = ''

    def made_of(self,objects,A_eff):

        self.kx = sum(c.kx*c.Ly*c.Lz for c in objects)


# FR4
FR4 = elemento()
FR4.Lx = 140e-3 #m
FR4.Ly = 100e-3 #m
FR4.Lz = 1.5e-3 #m
FR4.kx = 0.5 #W/(m·K)
FR4.ky = 0.5 #W/(m·K)
FR4.kz = 0.25 #W/(m·K)

# Cu
Cu_up = elemento()
Cu.Lx = FR4.Lx #m
Cu.Ly = FR4.Ly #m
Cu.Lz = 50e-6 #m
Cu.F = 0.1
Cu.kx = 395.0 * Cu.F #W/(m·K)
Cu.ky = 395.0 * Cu.F #W/(m·K)
Cu.kz = 395.0 * Cu.F#W/(m·K)

Cu = elemento()
Cu.Lx = FR4.Lx #m
Cu.Ly = FR4.Ly #m
Cu.Lz = 50e-6 #m
Cu.F = 0.1
Cu.kx = 395.0 #W/(m·K)
Cu.ky = 395.0 #W/(m·K)
Cu.kz = 395.0 #W/(m·K)

# IC
IC = elemento()
IC.Lx = 20e-3 #m
IC.Ly = 40e-3 #m
IC.Lz = 3e-3 #m
IC.W = 5 #W
IC.k = 50 #W/(m·K)
IC.c = 20 #J/K
IC.pitch = 20e-3 #m

# PCB
PCB = elemento()
PCB.Lx = FR4.Lx
PCB.Ly = FR4.Ly
PCB.Lz = FR4.Lz + 2*Cu.Lz

# Paredes
T_wall = 25+273.15 #K


## a) Considerando que la tarjeta sólo evacua calor por los bordes, determinar la temperatura máxima que se
## alcanzaría si toda la disipación estuviese uniformemente repartida en la PCB y los IC no influyeran.
print('*** a ***')

# Debido a la simetría del problema se puede separar el problema en dos
W_dis = 3*IC.W
Q_wall = W_dis/2
phi = W_dis/(PCB.Ly*PCB.Lx*PCB.Lz)

A_eff = PCB.Ly*PCB.Lz
k_eff = (Cu.k*Cu.F*(Cu.Ly*Cu.Lz)+FR4.kxy*(FR4.Ly*FR4.Lz)+Cu.k*(Cu.Ly*Cu.Lz))/A_eff
L = PCB.Lx/2

## Solución analítica
print('Solución analítica')

# Primera aproximación, toda la potencia concentrada en el centro: T(x) = a + b*x
a1 = T_wall
b1 = Q_wall/(k_eff * A_eff)

T_max = a1 + b1* L

print(' Potencia puntual: T_max = ',round(T_max),'K ó',round(T_max-273.15),'C')

# Segunda aproximación, potencia distribuida: T(x) = a + b*x + c*x^2 donde c = - phi /(2k)
a2 = T_wall
b2 = Q_wall/(k_eff * A_eff)
c2 = -phi /(2*k_eff)

T_max = a2 + b2*L + c2*L**2

print(' Potencia uniforme: T_max = ',round(T_max),'K ó',round(T_max-273.15),'C')

# Representación gráfica de ambas soluciones

N = 50
xa = np.linspace(0,L,N+1)
Ta1 = a1 + b1*xa
Ta2 = a2 + b2*xa + c2*xa**2

fig = plt.figure()
plt.rc('axes', prop_cycle=monochrome)
plt.plot(xa*1e3,Ta1-273.15)
plt.plot(xa*1e3,Ta2-273.15)
plt.xlabel('x[mm]')
plt.ylabel('T[C]')
plt.title('Distribución de temperatura')
plt.legend(['Potencia puntual','Potencia uniforme'])
plt.grid()
plt.savefig('a_analitica.pdf')
plt.close()

## Solución numérica
print('Solución numérica')

# Discretización

L = L       # Espacio de simulación
T = 1000    # Tiempo de simulación
N = 50      # Número de elementos espaciales
M = 500     # Número de elementos temporales (ver criterio)
Dx = L/N
Dt = T/M
xa = np.linspace(0,L,N+1)
ta = np.linspace(0,T,M+1)

Ta = np.ones((M+1,N+1)) # T(t,x)

for t in ta:
    for x in xa:




## b) Considerando que la tarjeta sólo evacua calor por los bordes, determinar la temperatura máxima que se
## alcanzaría con un modelo unidimensional en el que los IC llegaran hasta los bordes aislados, en el límite
## kIC→∞, y con la kIC dada.
print('*** b ***')

### Para los dos problemas

A_eff = PCB.Ly*PCB.Lz
phi = IC.W/(IC.Lx*PCB.Ly*PCB.Lz)
L = PCB.Lx/2

# Con ejes en el borde de cada una de las 4 zonas
L1 = L - IC.Lx- IC.pitch- IC.Lx/2
L2 = IC.Lx
L3 = IC.pitch
L4 = IC.Lx/2

N = 50
x1 = np.linspace(0,L1,N+1)
x2 = np.linspace(0,L2,N+1)
x3 = np.linspace(0,L3,N+1)
x4 = np.linspace(0,L4,N+1)

xb = np.concatenate((x1,x2+L1,x3+L1+L2,x4+L1+L2+L3))

### Con kIC→∞

k_eff1 = (Cu.k*Cu.F*(Cu.Ly*Cu.Lz)+FR4.kxy*(FR4.Ly*FR4.Lz)+Cu.k*(Cu.Ly*Cu.Lz))/A_eff
#k_eff2→∞

# Zona 1: T(x) = a1 + b1*x
k_eff = k_eff1
a1 = T_wall
b1 = Q_wall/(k_eff * A_eff)
T1 = a1 + b1*x1
# Zona 2: T(x) = a2 + b2*x + c2*x^2 donde c2 = phi /(2k)
a2 = a1 + b1*L1
b2 = 0
c2 = 0
T2 = a2 + b2*x2 + c2*x2**2
# Zona 3: T(x) = a3 + b3*x
k_eff = k_eff1
a3 = a2 + b2*L2 + c2*L2**2
b3 = (IC.W/2)/(k_eff * A_eff)
T3 = a3 + b3*x3
# Zona 4: T(x) = a4 + b4*x + c4*x^2 donde c4 = -phi /(2k)
a4 =  a3 + b3*L3
b4 = 0
c4 = 0
T4 = a4 + b4*x4 + c4*x4**2

Tb1 = np.concatenate((T1, T2, T3, T4))
T_max = max(Tb1)

print('Con kIC→∞: T_max = ',round(T_max),'K ó',round(T_max-273.15),'C')

### Con kIC dada

k_eff1 = (Cu.k*Cu.F*(Cu.Ly*Cu.Lz)+FR4.kxy*(FR4.Ly*FR4.Lz)+Cu.k*(Cu.Ly*Cu.Lz))/A_eff
k_eff2 = (IC.k*(FR4.Ly*IC.Lz)+Cu.k*Cu.F*(Cu.Ly*Cu.Lz)+FR4.kxy*(FR4.Ly*FR4.Lz)+Cu.k*(Cu.Ly*Cu.Lz))/A_eff

# Zona 1: T(x) = a1 + b1*x
k_eff = k_eff1
a1 = T_wall
b1 = Q_wall/(k_eff * A_eff)
T1 = a1 + b1*x1
# Zona 2: T(x) = a2 + b2*x + c2*x^2 donde c2 = -phi /(2k)
k_eff = k_eff2
a2 = a1 + b1*L1
b2 = Q_wall/(k_eff * A_eff)
c2 = - phi /(2*k_eff)
T2 = a2 + b2*x2 + c2*x2**2
# Zona 3: T(x) = a3 + b3*x
k_eff = k_eff1
a3 = a2 + b2*L2 + c2*L2**2
b3 = (IC.W/2)/(k_eff * A_eff)
T3 = a3 + b3*x3
# Zona 4: T(x) = a4 + b4*x + c4*x^2 donde c4 = -phi /(2k)
k_eff = k_eff2
a4 =  a3 + b3*L3
b4 = (IC.W/2)/(k_eff * A_eff)
c4 = - phi/2 /(2*k_eff)
T4 = a4 + b4*x4 + c4*x4**2


Tb2 = np.concatenate((T1, T2, T3, T4))
T_max = max(Tb2)

print('Con la kIC dada: T_max = ',round(T_max),'K ó',round(T_max-273.15),'C')

# Representación gráfica de la solución

fig = plt.figure()
plt.rc('axes', prop_cycle=monochrome)
plt.plot(xb*1e3,Tb1-273.15)
plt.plot(xb*1e3,Tb2-273.15)
plt.xlabel('x[mm]')
plt.ylabel('T[C]')
plt.title('Distribución de temperatura')
plt.legend(['kIC→∞','kIC dado'])
plt.grid()
plt.savefig('b.pdf')
plt.close()


## c) Considerando que se transmite calor por radiación, con una emisividad media de 0,7 por el lado de los
## componentes, y de 0,5 por la cara opuesta, con una caja electrónica que se puede suponer negra y a 45 ºC,
## determinar la temperatura máxima linealizando las pérdidas radiativas y con disipación uniforme.
print('*** c ***')

eps1 = 0.7
p1 = PCB.Lx*PCB.Ly
eps2 = 0.5
p2 = PCB.Lx*PCB.Ly
T_inf = 45+273.15
sigma = 5.67e-8  #W/m^2·K^4
T_media = T_inf

phi = 3*IC.W/(PCB.Ly*PCB.Lx*PCB.Lz)
A_eff = PCB.Ly*PCB.Lz
k_eff = (Cu.k*Cu.F*(Cu.Ly*Cu.Lz)+FR4.kxy*(FR4.Ly*FR4.Lz)+Cu.k*(Cu.Ly*Cu.Lz))/A_eff
L = PCB.Lx

a = (p1*eps1+p2*eps2)*sigma*T_media**3 / (k_eff*A_eff)
T_chi = T_inf + phi/((p1*eps1+p2*eps2)*sigma*T_media**3)
T_gorro0 = T_wall - T_chi

# T(x) = c1 * exp(a**0.5*x) + c2 * exp(-a**0.5*x) + T_chi

c1 = T_gorro0/(exp(-a**0.5*L) - exp(a**0.5*L))
c2 = T_gorro0 * (1-1/(exp(-a**0.5*L) - exp(a**0.5*L)))

N = 50
xc = np.linspace(0,L/2,N+1)
Tc = c1 * np.exp(a**0.5*xc) + c2 * np.exp(-a**0.5*xc) + T_chi

T_max = c1 * np.exp(a**0.5*L/2) + c2 * np.exp(-a**0.5*L/2) + T_chi

print('T_max = ',round(T_max),'K ó',round(T_max-273.15),'C')

# Representación gráfica de la solución

fig = plt.figure()
plt.rc('axes', prop_cycle=monochrome)
plt.plot(xc*1e3,Tc-273.15)
plt.xlabel('x[mm]')
plt.ylabel('T[C]')
plt.title('Distribución de temperatura')
plt.grid()
plt.savefig('c.pdf')
plt.close()


## d) Resolver el caso anterior pero sin linealizar y con la disipación no uniforme.



## e) Resolver el problema térmico bidimensional estacionario y comparar el perfil central de temperaturas con
## el del caso anterior


# Representación gráfica de las soluciones

fig = plt.figure()
plt.rc('axes', prop_cycle=monochrome)
plt.plot(xa*1e3,Ta1-273.15)
plt.plot(xa*1e3,Ta2-273.15)
plt.plot(xb*1e3,Tb1-273.15)
plt.plot(xb*1e3,Tb2-273.15)
plt.xlabel('x[mm]')
plt.ylabel('T[C]')
plt.title('Distribución de temperatura')
plt.legend(['Potencia puntual','Potencia uniforme','kIC→∞','kIC dado'])
plt.grid()
plt.savefig('all.pdf')
plt.close()
