import matplotlib.pyplot as plt
from cycler import cycler
monochrome = (cycler('color', ['k']) * cycler('marker', ['', '.']) *
              cycler('linestyle', ['-', '--', ':', '=.']))
plt.rc('axes', prop_cycle=monochrome)
