import scipy.integrate as integrate
import scipy.special as special
import numpy as np
from scipy.integrate import quad
import matplotlib.pyplot as plt
from numpy.linalg import norm
from numpy import array, linspace, arange, zeros, ceil, amax, amin, argmax, argmin, abs
from numpy import polyfit, polyval, seterr, trunc, mean

file = open("AU_VB_LO.txt")
data = np.loadtxt(file, delimiter="\t")  # load tab separated spectra
data_plot = np.genfromtxt("AU_VB_LO.txt", delimiter="\t", names=["x", "y"])


def shirley(E, I, E_r, I_r, E_l, I_l, iterations, dif):
    E = np.array(E)  # Energy array
    I = np.array(I)  # Intensity array
    left_id = np.where(I == I_l)[0][0]  # Left energy,Intensity id
    right_id = np.where(I == I_r)[0][0]  # Right energy, Intensity id
    # Creates an array with the same number of entries as the energy array
    # Creates an array with the same number of entries as the energy array
    B = zeros(E.shape)
    # aligns the spectra with the background after the selected energy point on the left
    B[:left_id] = I_l-I_r
    # aligns the spectra with the background after the selected energy point on the right
    B[right_id:] = 0
    B_n = B.copy()
    it = 0
    while it < iterations:
        k_total = 0.0
        for i in range(left_id, right_id):
            # total k between E-right and E_left
            k_total += (E[i] - E[i + 1]) * 0.5 * \
                (I[i] + I[i + 1] - I_r - B[i] - B[i + 1])
            k = (I_l - I_r) / k_total
            # Calculate other iteration for B
        for i in range(left_id, right_id-1):
            B_tot = 0.0
            for j in range(i, right_id - 1):
                # calculation of integral which makes B, new iteration
                B_tot += (E[j] - E[j + 1]) * 0.5 * \
                    (I[j] + I[j + 1] - 2 * I_r - B[j] - B[j + 1])
                B_n[i] = k * B_tot
        if norm(B_n-B) < dif:  # if the next iteration arrives to selected difference stop
            B = B_n.copy()
            break
        else:
            B = B_n.copy()
        it += 1
    return I_r + B


a = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 0, 1e5)
b = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 1, 1e-5)
c = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 2, 1e-5)
d = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 3, 1e-5)
e = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 4, 1e-5)
f = shirley(
    data_plot['x'], data_plot['y'], 1490.3, 13.5, 1474.8, 739.3, 15, 1e-5)


E = np.array(data_plot['x'])  # Energy array
I = np.array(data_plot['y'])
final_result = np.zeros(shape=(len(E), 7))
final_result[:, 0] = E
final_result[:, 1] = I
final_result[:, 2] = a
final_result[:, 3] = b
final_result[:, 4] = c
final_result[:, 5] = d
final_result[:, 6] = e
#np.savetxt("Au_shirley.txt", final_result, delimiter='\t', fmt="%f")

# print(E)

plt.plot(data_plot['x'], data_plot['y'])
plt.plot(data_plot['x'], a)
plt.plot(data_plot['x'], b)
plt.plot(data_plot['x'], c)
plt.plot(data_plot['x'], d)
plt.plot(data_plot['x'], e)
plt.plot(data_plot['x'], f)
plt.show()
