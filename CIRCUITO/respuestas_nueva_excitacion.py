# -*- coding: utf-8 -*-
"""
Created on Mon Nov 24 14:35:30 2025

@author: nicko
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
#Manual
def u(t):
    return np.where(t >= 0, 1, 0)

def y(t):
    term1 = 7*(0.64 - 0.64*np.exp(-0.39*(t-10))) * u(t-10)
    term2 = 7*(0.64 - 0.64*np.exp(-0.39*(t-20))) * u(t-20)
    term3 = 14*(0.64 - 0.64*np.exp(-0.39*(t-30))) * u(t-30)
    return term1 + term2 + term3

#OPM función transferencia 
datos_fdt = pd.read_csv("Variables_Fdts2.csv")
t_fdt = datos_fdt["time"]
y_fdt = datos_fdt["fdt.y"]

# OPM circuito mecánico 
datos_circ = pd.read_csv("Variables_circuito_s2.csv")
t_circ = datos_circ["time"]
y_circ = datos_circ["voltageSensor.v"]


t = np.linspace(0, 50, 2000)
y_manual = y(t)

#Grafica

plt.figure(figsize=(10, 5))

plt.plot(t, y_manual, linewidth=2, label="Respuesta Manual")
plt.plot(t_fdt, y_fdt, linewidth=2, label="OpenModelica FDT")
plt.plot(t_circ, y_circ, linewidth=2, label="OpenModelica Circuito")

plt.title("Comparación de respuestas a la nueva excitación")
plt.xlabel("Tiempo (s)")
plt.ylabel("y(t)")
plt.grid(True)
plt.legend()
plt.show()
