import os
import numpy as np
from numpy import genfromtxt
import pandas as pd
import matplotlib.pyplot as plt
from cycler import cycler
monochrome = (cycler('color', ['k']) * cycler('marker', ['', '.']) *
              cycler('linestyle', ['-', '--', ':','-.']))

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
            if 'numerico' in line:
                p = line.split()
                numerico = p[2]
except:
    ### Apartados
    apartado_a = 'no'
    apartado_b = 'no'
    apartado_c = 'no'
    apartado_d = 'yes'
    apartado_e = 'no'
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
    print('Proceeding with a')

    xa = read_result('xa')
    Ta1 = read_result('Ta1')
    Ta2 = read_result('Ta2')

    fig = plt.figure()
    #plt.rc('axes', prop_cycle=monochrome)
    plt.plot(xa*1e3,Ta1-273.15)
    plt.plot(xa*1e3,Ta2-273.15)
    plt.xlabel('x[mm]')
    plt.ylabel('T[C]')
    plt.title('Distribución de temperatura')
    plt.legend(['Potencia puntual','Potencia uniforme'])
    plt.grid()
    plt.savefig(figures_dir+"/a_analytic.pdf")
    plt.close()

    if numerico == 'yes':

        xan = read_result('xan')
        Ta1n = read_result('Ta1n')
        Ta2n = read_result('Ta2n')

        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xan*1e3,Ta1n-273.15)
        plt.plot(xan*1e3,Ta2n-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia puntual','Potencia uniforme'])
        plt.grid()
        plt.savefig(figures_dir+'a_numeric.pdf')
        plt.close()


        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xa*1e3,Ta1-273.15)
        plt.plot(xa*1e3,Ta2-273.15)
        plt.plot(xan*1e3,Ta1n-273.15)
        plt.plot(xan*1e3,Ta2n-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia puntual (analítica)','Potencia uniforme (analítica)','Potencia puntual (numérica)','Potencia uniforme (numérica)'])
        plt.grid()
        plt.savefig(figures_dir+'a.pdf')
        plt.close()

### Apartado b

if apartado_b == 'yes':
    print('Proceeding with b')

    xb = read_result('xb')
    Tb1 = read_result('Tb1')
    Tb2 = read_result('Tb2')

    fig = plt.figure()
    #plt.rc('axes', prop_cycle=monochrome)
    plt.plot(xb*1e3,Tb1-273.15)
    plt.plot(xb*1e3,Tb2-273.15)
    plt.xlabel('x[mm]')
    plt.ylabel('T[C]')
    plt.title('Distribución de temperatura')
    plt.legend(['kIC→∞','kIC dado'])
    plt.grid()
    plt.savefig(figures_dir+'b_analytic.pdf')
    plt.close()

    if numerico == 'yes':

        xbn = read_result('xbn')
        Tb1n = read_result('Tb1n')
        Tb2n = read_result('Tb2n')

        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xbn*1e3,Tb1n-273.15)
        plt.plot(xbn*1e3,Tb2n-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['kIC→∞','kIC dado'])
        plt.grid()
        plt.savefig(figures_dir+'b_numeric.pdf')
        plt.close()


        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xb*1e3,Tb1-273.15)
        plt.plot(xb*1e3,Tb2-273.15)
        plt.plot(xbn*1e3,Tb1n-273.15)
        plt.plot(xbn*1e3,Tb2n-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['kIC→∞ (analítica)','kIC dado (analítica)','kIC→∞ (numérica)','kIC dado (numérica)'])
        plt.grid()
        plt.savefig(figures_dir+'b.pdf')
        plt.close()

### Apartado c

if apartado_c == 'yes':
    print('Proceeding with c')

    xc = read_result('xc')
    Tc = read_result('Tc')

    fig = plt.figure()
    #plt.rc('axes', prop_cycle=monochrome)
    plt.plot(xc*1e3,Tc-273.15)
    plt.xlabel('x[mm]')
    plt.ylabel('T[C]')
    plt.title('Distribución de temperatura')
    plt.legend(['Solución analítica','Solución numérica'])
    plt.grid()
    plt.savefig(figures_dir+'c_analytic.pdf')
    plt.close()

    if numerico == 'yes':

        xcn = read_result('xcn')
        Tcn = read_result('Tcn')

        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xcn*1e3,Tcn-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.grid()
        plt.savefig(figures_dir+'c_numeric.pdf')
        plt.close()

        fig = plt.figure()
        #plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xc*1e3,Tc-273.15)
        plt.plot(xcn*1e3,Tcn-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['Solución analítica','Solución numérica'])
        plt.grid()
        plt.savefig(figures_dir+'c.pdf')
        plt.close()

### Apartado d

if apartado_d == 'yes':
    print('Proceeding with d')

    xdn = read_result('xdn')
    Tdn = read_result('Tdn')

    fig = plt.figure()
    #plt.rc('axes', prop_cycle=monochrome)
    plt.plot(xdn*1e3,Tdn-273.15)
    plt.xlabel('x[mm]')
    plt.ylabel('T[C]')
    plt.title('Distribución de temperatura')
    plt.grid()
    plt.savefig(figures_dir+'d.pdf')
    plt.close()

### Apartado e

if apartado_e == 'yes':
    print('Proceeding with e')

    xen = read_result('xen')
    yen = read_result('yen')
    Ten = read_result('Ten')

    x,y = np.meshgrid(xen,yen)
    z = Ten.transpose()

    fig = plt.figure()
    ax = fig.add_subplot(111)
    plt.title('Distribución de temperatura')
    CS3 = plt.contourf(x,y,z, cmap='jet')
    plt.colorbar()
    plt.grid()
    plt.savefig(figures_dir+'e.pdf')
    plt.close()

    fig = plt.figure()
    ax = fig.gca(projection='3d')
    surf = ax.plot_surface(x, y, z, cmap='jet')
    plt.grid()
    plt.show()
    plt.close()


### Representación conjunta

if apartado_a == 'yes' and apartado_b == 'yes' and apartado_c == 'yes' and apartado_d == 'yes':

    # Analíticas
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
    plt.savefig('all_analytic.pdf')
    plt.close()

    if numerico == 'yes':
        # Numéricas
        fig = plt.figure()
        plt.rc('axes', prop_cycle=monochrome)
        plt.plot(xan*1e3,Ta1n-273.15)
        plt.plot(xan*1e3,Ta2n-273.15)
        plt.xlabel('x[mm]')
        plt.ylabel('T[C]')
        plt.title('Distribución de temperatura')
        plt.legend(['Potencia uniforme','kIC→∞','kIC dado'])
        plt.grid()
        plt.savefig('all_numeric.pdf')
        plt.close()
