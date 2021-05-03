class material():
    def __init__(self):
        self.rho = ''
        self.c = ''
        self.k = ''
        self.alpha = ''
        self.epsilon = ''

SolarCells = material()
SolarCells.rho = 3500
SolarCells.c = 750
SolarCells.k = 100
SolarCells.alpha = 0.8
SolarCells.epsilon = 0.8

CFRP = material()
CFRP.rho = 1700
CFRP.c = 850
CFRP.k = [30,1]
CFRP.alpha = 0.3
CFRP.epsilon = 0.8

AL_5056 = material()
AL_5056.rho = 2700
AL_5056.c = 900
AL_5056.k = 120
AL_5056.alpha = 0.2
AL_5056.epsilon = 0.2
