import csv
import numpy as np
import simpleicp


def read_xyz(path_to_pc):
    X = []
    with open(path_to_pc) as f:
        reader = csv.reader(f, delimiter=' ')
        for row in reader:
            X.append(list(map(float, row)))
    return X


path_to_pc1 = r'C:\Users\ryanl\OneDrive\Documents\ComputerVisionDev\ICP_Registration\ICP_doc\dragon1.txt'
path_to_pc2 = r'C:\Users\ryanl\OneDrive\Documents\ComputerVisionDev\ICP_Registration\ICP_doc\dragon2.txt'

# path_to_pc1 = '../data/airborne_lidar1.xyz'
# path_to_pc2 = '../data/airborne_lidar2.xyz'

# path_to_pc1 = '../data/terrestrial_lidar1.xyz'
# path_to_pc2 = '../data/terrestrial_lidar2.xyz'

X_fix = np.array(read_xyz(path_to_pc1))
X_mov = np.array(read_xyz(path_to_pc2))

print(path_to_pc1)
print(path_to_pc2)

simpleicp.simpleicp(X_fix, X_mov)