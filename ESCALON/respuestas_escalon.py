# -*- coding: utf-8 -*-
"""
Created on Mon Nov 24 13:53:19 2025

@author: nicko
"""
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import control as ctrl

#Control-python

num = [0.1, 7]         
den = [0.4, 28.1, 11]

H = ctrl.TransferFunction(num, den)

t_ctrl, y_ctrl = ctrl.step_response(H)


#Manual

def y_manual(t):
    return 0.64 - 0.64 * np.exp(-0.39 * t) + 0.0000077*np.exp(-69.85 * t)

t_manual = np.linspace(0, 16, 1000)
y_man = y_manual(t_manual)


#OPM-función transferencia

datos_fdt = pd.read_csv("Variable_Fdt.csv")   
t_fdt = datos_fdt["time"]
y_fdt = datos_fdt["funciontransferencia.y"]

#OPM-función circuito mecanico

datos_circ = pd.read_csv("Variables_circuito_eu.csv")  
t_circ = datos_circ["time"]
y_circ = datos_circ["voltageSensor.v"]


#Grafica

plt.figure(figsize=(10,6))

plt.plot(t_ctrl, y_ctrl, label="Python Control", linewidth=2)
plt.plot(t_manual, y_man, label="Manual", linewidth=2)
plt.plot(t_fdt, y_fdt, label="OpenModelica - F(T)", linewidth=2)
plt.plot(t_circ, y_circ, label="OpenModelica - Circuito/Mecánico", linewidth=2)

plt.grid(True)
plt.xlabel("Tiempo (s)")
plt.ylabel("Salida")
plt.title("Comparación: Respuestas al Escalón")

plt.legend()
plt.show()
