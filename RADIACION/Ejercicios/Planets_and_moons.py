import numpy as np

UA = 150e9 #m

class Body():
    def __init__(self):
        self.alpha = ''
        self.epsilon = ''
        self.rho = ''
        self.T   = ''


Mars = Body()
Mars.d = 1.5*UA
Mars.E = 590
Mars.R = 3.4e6
Mars.rho = np.array([0.17,0.25])
Mars.T = np.array([186,268])
Mars.epsilon = 0.95

Sun = Body()
Sun.T = 5800
Sun.R = 1390e6/2

Earth = Body()
Earth.E = 1361
Earth.R = 6.4e6
Earth.rho = 0.3
Earth.T = 15+273.15
Earth.epsilon = 0.61
