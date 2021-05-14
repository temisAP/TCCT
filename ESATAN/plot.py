import tkinter as tk
from tkinter import filedialog

root = tk.Tk()
root.withdraw()

file = filedialog.askopenfilenames()

import pandas as pd
import numpy as np

df = pd.read_csv(file[0],delimiter=',')
df.drop([0,2,3],inplace=True)
#print(df)

duplas = np.array_split(df, len(df.columns)/2, axis = 1)

import matplotlib.pyplot as plt

fig = plt.figure()

Legend = []
for dupla in duplas:
    Time = []
    Temperature = []


    for index, row in dupla.iterrows():
        if 'Element' in row[0]:
            Legend.append(row[1])
        elif 'Time[s]' in row[0]:
            print(dupla)
        else:
            Time.append(float(row[0]))
            Temperature.append(float(row[1]))

    plt.plot(Time, Temperature)


plt.xlabel('t[s]', horizontalalignment='right', x=1.0,fontsize=14)
plt.ylabel('T[°C]', horizontalalignment='right', y=1.0,x=0.3,fontsize=14).set_rotation(0)
#plt.ylim([-75,125])
plt.grid()

from tkinter import Tk, Label, Entry, StringVar

root= tk.Tk()

labelDir=Label(root, text="Name of png (if empty save as .csv)", height=4, bg='#fff', fg='#000')
labelDir.grid(row=1,column=2)

directory=StringVar(None)
dirname=Entry(root,textvariable=directory,width=50)
dirname.grid(row=2,column=2)

labelDir2=Label(root, text="Legends (label1/label2/.../labelN)", height=4, bg='#fff', fg='#000')
labelDir2.grid(row=3,column=2)

directory2=StringVar(None)
dirname2=Entry(root,textvariable=directory2,width=50)
dirname2.grid(row=4,column=2)

def btn():
    image_name = dirname.get()
    input_legends = dirname2.get()
    root.quit()

button = tk.Button(root,text="OK",command=btn)
button.grid(row=5,column=2)

root.mainloop()

def convertTuple(tup):
    str =  ''.join(tup)
    return str

input_legends = dirname2.get()
if not input_legends:
    plt.legend(Legend)
else:
    str = convertTuple(input_legends)
    p = str.split('/')
    if 'none' not in p:
        plt.legend(p)
import os
figures_dir = './Figures/'
if not os.path.exists(figures_dir):
    os.makedirs(figures_dir)

image_name = dirname.get()
if not image_name:
    str = convertTuple(file)
    q = str.split('/')[-1].split('.')
    print('Save as',q[0])
    plt.savefig(figures_dir+q[0]+'.pdf', bbox_inches = "tight")
else:
    print('Save as',image_name)
    plt.savefig(figures_dir+image_name+'.pdf',bbox_inches = "tight")



plt.close()
