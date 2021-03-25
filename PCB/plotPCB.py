import os
import numpy as np
from numpy import genfromtxt
import matplotlib.pyplot as plt

# Para saber qué apartado correr
data = 'data_plot' #Nombre del archivo
try:
     with open(data, 'r') as data:
        for line in data:
            if 'apartado_a' in line:
                p = line.split()
                apartado_a = p[2]
            if 'apartado_b' in line:
                p = line.split()
                apartado_b = p[2]
            if 'apartado_c' in line:
                p = line.split()
                apartado_c = p[2]
            if 'apartado_d' in line:
                p = line.split()
                apartado_d = p[2]
            if 'apartado_e' in line:
                p = line.split()
                apartado_e = p[2]
            if 'all' in line:
                p = line.split()
                all = p[2]
            if 'numerico' in line:
                p = line.split()
                numerico = p[2]
except:
    ### Apartados
    apartado_a = 'yes'
    apartado_b = 'yes'
    apartado_c = 'yes'
    apartado_d = 'yes'
    apartado_e = 'yes'
    all = 'yes'
    ###
    numerico = 'yes'

    print('No data configuration file found')


figures_dir = './Figures/'
if not os.path.exists(figures_dir):
    os.makedirs(figures_dir)

results_dir = './Results/'

def read_result(name):
    my_data = genfromtxt(results_dir+str(name)+'.csv', delimiter=',')
    return my_data

### Apartado a
if apartado_a == 'yes':
    print('*** a ***')

    xa = read_result('xa')
    Ta1 = read_result('Ta1')
    Ta2 = read_result('Ta2')

    print('Solución analítica')
    print(' Potencia puntual : T_max = ',round(np.amax(Ta1)),'K ó',round(np.amax(Ta1)-273.15),'C')
    print(' Potencia uniforme: T_max = ',round(np.amax(Ta2)),'K ó',round(np.amax(Ta2)-273.15),'C')

    fig = plt.figure()
    #
    plt.plot(xa*1e3,Ta1)
    plt.plot(xa*1e3,Ta2)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.legend(['Potencia puntual','Potencia uniforme'])
    plt.grid()
    plt.savefig(figures_dir+"/a_analytic.pdf")
    plt.close()

    if numerico == 'yes':

        xan = read_result('xan')
        Ta1n = read_result('Ta1n')
        Ta2n = read_result('Ta2n')

        print('Solución numérica')
        print(' Potencia puntual : T_max = ',round(np.amax(Ta1n)),'K ó',round(np.amax(Ta1n)-273.15),'C')
        print(' Potencia uniforme: T_max = ',round(np.amax(Ta2n)),'K ó',round(np.amax(Ta2n)-273.15),'C')

        fig = plt.figure()
        #
        plt.plot(xan*1e3,Ta1n)
        plt.plot(xan*1e3,Ta2n)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia puntual','Potencia uniforme'])
        plt.grid()
        plt.savefig(figures_dir+'a_numeric.pdf')
        plt.close()


        fig = plt.figure()
        #
        plt.plot(xa*1e3,Ta1)
        plt.plot(xa*1e3,Ta2)
        plt.plot(xan*1e3,Ta1n)
        plt.plot(xan*1e3,Ta2n)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia puntual (analítica)','Potencia uniforme (analítica)','Potencia puntual (numérica)','Potencia uniforme (numérica)'])
        plt.grid()
        plt.savefig(figures_dir+'a.pdf')
        plt.close()

### Apartado b

if apartado_b == 'yes':
    print('*** b ***')

    xb = read_result('xb')
    Tb1 = read_result('Tb1')
    Tb2 = read_result('Tb2')

    print('Solución analítica')
    print(' Con kIC→∞   : T_max = ',round(np.amax(Tb1)),'K ó',round(np.amax(Tb1)-273.15),'C')
    print(' Con kIC dada: T_max = ',round(np.amax(Tb2)),'K ó',round(np.amax(Tb2)-273.15),'C')

    fig = plt.figure()
    #
    plt.plot(xb*1e3,Tb1)
    plt.plot(xb*1e3,Tb2)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.legend(['kIC→∞','kIC dado'])
    plt.grid()
    plt.savefig(figures_dir+'b_analytic.pdf')
    plt.close()

    if numerico == 'yes':

        xbn = read_result('xbn')
        Tb1n = read_result('Tb1n')
        Tb2n = read_result('Tb2n')

        print('Solución numérica')
        print(' Con kIC→∞   : T_max = ',round(np.amax(Tb1n)),'K ó',round(np.amax(Tb1n)-273.15),'C')
        print(' Con kIC dada: T_max = ',round(np.amax(Tb2n)),'K ó',round(np.amax(Tb2n)-273.15),'C')

        fig = plt.figure()
        #
        plt.plot(xbn*1e3,Tb1n)
        plt.plot(xbn*1e3,Tb2n)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['kIC→∞','kIC dado'])
        plt.grid()
        plt.savefig(figures_dir+'b_numeric.pdf')
        plt.close()

        fig = plt.figure()
        #
        plt.plot(xb*1e3,Tb1)
        plt.plot(xb*1e3,Tb2)
        plt.plot(xbn*1e3,Tb1n)
        plt.plot(xbn*1e3,Tb2n)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['kIC→∞ (analítica)','kIC dado (analítica)','kIC→∞ (numérica)','kIC dado (numérica)'])
        plt.grid()
        plt.savefig(figures_dir+'b.pdf')
        plt.close()

### Apartado c

if apartado_c == 'yes':
    print('*** c ***')

    xc = read_result('xc')
    Tc = read_result('Tc')

    print('Solución analítica')
    print(' T_max = ',round(np.amax(Tc)),'K ó',round(np.amax(Tc)-273.15),'C')

    fig = plt.figure()
    #
    plt.plot(xc*1e3,Tc)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.grid()
    plt.savefig(figures_dir+'c_analytic.pdf')
    plt.close()

    if numerico == 'yes':

        xcn = read_result('xcn')
        Tcn = read_result('Tcn')

        print('Solución numérica')
        print(' T_max = ',round(np.amax(Tcn)),'K ó',round(np.amax(Tcn)-273.15),'C')

        fig = plt.figure()
        #
        plt.plot(xcn*1e3,Tcn)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.grid()
        plt.savefig(figures_dir+'c_numeric.pdf')
        plt.close()

        fig = plt.figure()
        #
        plt.plot(xc*1e3,Tc)
        plt.plot(xcn*1e3,Tcn)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['Solución analítica','Solución numérica'])
        plt.grid()
        plt.savefig(figures_dir+'c.pdf')
        plt.close()

### Apartado d

if apartado_d == 'yes':
    print('*** d ***')

    xdn = read_result('xdn')
    Tdn = read_result('Tdn')

    print(' T_max = ',round(np.amax(Tdn)),'K ó',round(np.amax(Tdn)-273.15),'C')

    fig = plt.figure()
    #
    plt.plot(xdn*1e3,Tdn)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.grid()
    plt.savefig(figures_dir+'d.pdf')
    plt.close()

### Apartado e

if apartado_e == 'yes':
    print('*** e ***')

    xen = read_result('xen')
    yen = read_result('yen')
    Ten = read_result('Ten')

    print(' T_max = ',round(np.amax(Ten)),'K ó',round(np.amax(Ten)-273.15),'C')

    x,y = np.meshgrid(xen,yen)
    z = Ten.transpose()

    fig = plt.figure()
    ax = fig.add_subplot(111)
    plt.title('Distribución de temperatura: T[K]')
    clev = np.arange(z.min()-1.15,z.max()+1-0.15,1)
    CS3 = plt.contourf(x,y,z,clev,cmap='jet')
    bar = plt.colorbar()
    plt.xlabel('x[mm]')
    plt.ylabel('y[mm]')
    plt.grid()
    plt.savefig(figures_dir+'e.png')
    plt.close()

    fig = plt.figure()
    ax = fig.gca(projection='3d')
    surf = ax.plot_surface(x*1e3, y*1e3, z, cmap='jet')
    plt.xlabel('x[mm]')
    plt.ylabel('y[mm]')
    ax.set_zlabel('T[K]')
    plt.grid()
    plt.show()
    plt.close()

    ### Conductividad

    xen = read_result('xen')
    yen = read_result('yen')
    k = read_result('k')

    x,y = np.meshgrid(xen,yen)
    z = k.transpose()

    fig = plt.figure()
    ax = fig.add_subplot(111)
    plt.title('Conductividad [W/(m·K)]')
    clev = np.arange(z.min()-5,z.max()+5,1)
    CS3 = plt.contourf(x,y,z, clev, cmap='jet')
    bar = plt.colorbar()
    plt.xlabel('x[mm]')
    plt.ylabel('y[mm]')
    plt.grid()
    plt.savefig(figures_dir+'k.pdf')
    plt.close()

    ### rho_c

    xen = read_result('xen')
    yen = read_result('yen')
    rho_c = read_result('rho_c')

    x,y = np.meshgrid(xen,yen)
    z = rho_c.transpose()

    fig = plt.figure()
    ax = fig.add_subplot(111)
    plt.title('ρc [J/(K·m³)]')
    clev = np.arange(z.min()-1e2,z.max()+1e2,1e2)
    CS3 = plt.contourf(x,y,z, clev, cmap='jet')
    bar = plt.colorbar()
    plt.xlabel('x[mm]')
    plt.ylabel('y[mm]')
    plt.grid()
    plt.savefig(figures_dir+'rho_c.pdf')
    plt.close()

    ### Disipación

    xen = read_result('xen')
    yen = read_result('yen')
    phi = read_result('phii')

    x,y = np.meshgrid(xen,yen)
    z = phi.transpose()

    fig = plt.figure()
    ax = fig.add_subplot(111)
    plt.title('Disipación [W/m³]')
    clev = np.arange(z.min()-1e3,z.max()+1e3,1e3)
    CS3 = plt.contourf(x,y,z, clev, cmap='jet')
    bar = plt.colorbar()
    plt.xlabel('x[mm]')
    plt.ylabel('y[mm]')
    plt.grid()
    plt.savefig(figures_dir+'phi.pdf')
    plt.close()


### Representación conjunta

if (apartado_a == 'yes' and apartado_b == 'yes' and apartado_c == 'yes' and apartado_d == 'yes'):

    # Analíticas
    fig = plt.figure()
    #
    plt.plot(xa*1e3,Ta1)
    plt.plot(xa*1e3,Ta2)
    plt.plot(xb*1e3,Tb1)
    plt.plot(xb*1e3,Tb2)
    plt.plot(xc*1e3,Tc)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.legend(['Potencia puntual','Potencia uniforme','kIC→∞','kIC dado','Radiación lineal'])
    plt.grid()
    plt.savefig(figures_dir+'all_analytic.pdf')
    plt.close()

    if numerico == 'yes':
        # Numéricas
        fig = plt.figure()
        #
        plt.plot(xan*1e3,Ta1n)
        plt.plot(xan*1e3,Ta2n)
        plt.plot(xbn*1e3,Tb1n)
        plt.plot(xbn*1e3,Tb2n)
        plt.plot(xcn*1e3,Tcn)
        plt.plot(xdn*1e3,Tdn)
        plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
        h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
        h.set_rotation(0)
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia uniforme','kIC→∞','kIC dado','Radiación lineal','Radiación & IC'])
        plt.grid()
        plt.savefig(figures_dir+'all_numeric.pdf')
        plt.close()

if all == 'yes':

    print('*** all ***')

    xa = read_result('xa')
    Ta1 = read_result('Ta1')
    Ta2 = read_result('Ta2')

    xb = read_result('xb')
    Tb1 = read_result('Tb1')
    Tb2 = read_result('Tb2')

    xc = read_result('xc')
    Tc = read_result('Tc')

    xdn = read_result('xdn')
    Tdn = read_result('Tdn')

    fig = plt.figure()
    #
    plt.plot(xa*1e3,Ta1)
    plt.plot(xa*1e3,Ta2)
    plt.plot(xb*1e3,Tb1)
    plt.plot(xb*1e3,Tb2)
    plt.plot(xc*1e3,Tc)
    plt.plot(xdn*1e3,Tdn)
    plt.xlabel('x[mm]', horizontalalignment='right', x=1.0)
    h = plt.ylabel('T[K]', horizontalalignment='right', y=1.0)
    h.set_rotation(0)
    plt.title('Distribución de temperatura')
    plt.legend(['(1) puntual','(1) uniforme','(2) kIC→∞','(2) kIC dado','(3)','(4)'])
    plt.grid()
    plt.savefig(figures_dir+'all.pdf')
    plt.close()
