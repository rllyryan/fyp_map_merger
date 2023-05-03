import cv2 as cv
import imutils
import numpy as np

img = cv.imread('Images/fr097_multi_crop2.jpg',0)

width = int(img.shape[1] * 5)
height = int(img.shape[0] * 5)
dim = (width, height)
print(dim)

# angle = 20
# mat = img

# # new_img = cv.resize(img, dim, interpolation = cv.INTER_CUBIC)
# height, width = mat.shape[:2] # image shape has 3 dimensions
# image_center = (width/2, height/2) # getRotationMatrix2D needs coordinates in reverse order (width, height) compared to shape

# angle = 0 - angle

# rotation_mat = cv.getRotationMatrix2D(image_center, angle, 1.)

# # rotation calculates the cos and sin, taking absolutes of those.
# abs_cos = abs(rotation_mat[0,0]) 
# abs_sin = abs(rotation_mat[0,1])

# # find the new width and height bounds
# bound_w = int(height * abs_sin + width * abs_cos)
# bound_h = int(height * abs_cos + width * abs_sin)

# # subtract old image center (bringing image back to origo) and adding the new image center coordinates
# rotation_mat[0, 2] += bound_w/2 - image_center[0]
# rotation_mat[1, 2] += bound_h/2 - image_center[1]

# # rotate image with the new bounds and translated rotation matrix
# rotated_mat = cv.warpAffine(mat, rotation_mat, (bound_w, bound_h), flags = cv.INTER_LANCZOS4)

# black_location = np.where((rotated_mat[:,:] ==0))

new_img = imutils.rotate_bound(img, 10)
black_location = np.where((new_img[:,:] ==0))
new_img[black_location] = 220

new_img = imutils.rotate_bound(new_img, 10)

cv.imwrite('Images/fr097_multi_crop2_scaled.jpg', new_img)