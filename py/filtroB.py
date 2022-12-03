#Recopilado desde https://github.com/fubel/PeronaMalikDiffusion/blob/master/main.py
#Modificado por Dominique Teillier

import numpy as np
from scipy import ndimage
import matplotlib.pyplot as plt
from skimage import io
import time


image_file = 'ChuchancaRuidoso.jpg'
iterations = 50
delta = 0.1
kappa = 9

im = io.imread(image_file, as_gray=True)
u = im.astype('float64')
dx = 1
dy = 1
dd = np.sqrt(2)

i = time.time()
windows = [
    np.array(
            [[0, 1, 0], [0, -1, 0], [0, 0, 0]], np.float64
    ),
    np.array(
            [[0, 0, 0], [0, -1, 0], [0, 1, 0]], np.float64
    ),
    np.array(
            [[0, 0, 0], [0, -1, 1], [0, 0, 0]], np.float64
    ),
    np.array(
            [[0, 0, 0], [1, -1, 0], [0, 0, 0]], np.float64
    ),
    np.array(
            [[0, 0, 1], [0, -1, 0], [0, 0, 0]], np.float64
    ),
    np.array(
            [[0, 0, 0], [0, -1, 0], [0, 0, 1]], np.float64
    ),
    np.array(
            [[0, 0, 0], [0, -1, 0], [1, 0, 0]], np.float64
    ),
    np.array(
            [[1, 0, 0], [0, -1, 0], [0, 0, 0]], np.float64
    ),
]

for r in range(iterations):
    
    nabla = [ ndimage.convolve(u, w) for w in windows ]
 
    diff = [ 1./(1 + (n/kappa)**2) for n in nabla]

    terms = [diff[i]*nabla[i] for i in range(4)]
    terms += [(1/(dd**2))*diff[i]*nabla[i] for i in range(4, 8)]
    u = u + delta*(sum(terms))

f = time.time()
#plt.imshow(u,cmap='gray') Para ver la imagen sin ruido
#plt.show()
print("tiempo de ejecucion: ",f-i)