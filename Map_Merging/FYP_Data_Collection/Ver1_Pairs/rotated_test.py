import cv2 as cv

def rotate_image(mat, angle):
    """
    Rotates an image (angle in degrees) and expands image to avoid cropping
    """

    height, width = mat.shape[:2] # image shape has 3 dimensions
    image_center = (width/2, height/2) # getRotationMatrix2D needs coordinates in reverse order (width, height) compared to shape

    angle = 0 - angle

    rotation_mat = cv.getRotationMatrix2D(image_center, angle, 1.)

    # rotation calculates the cos and sin, taking absolutes of those.
    abs_cos = abs(rotation_mat[0,0]) 
    abs_sin = abs(rotation_mat[0,1])

    # find the new width and height bounds
    bound_w = int(height * abs_sin + width * abs_cos)
    bound_h = int(height * abs_cos + width * abs_sin)

    # subtract old image center (bringing image back to origo) and adding the new image center coordinates
    rotation_mat[0, 2] += bound_w/2 - image_center[0]
    rotation_mat[1, 2] += bound_h/2 - image_center[1]

    # rotate image with the new bounds and translated rotation matrix
    rotated_mat = cv.warpAffine(mat, rotation_mat, (bound_w, bound_h), flags = cv.INTER_LANCZOS4)
    return rotated_mat

img = cv.imread('Images/ap_hill_crop_2.jpg', 0)
rot_img = rotate_image(img, 45)
cv.imwrite('45.jpg', rot_img)
rot_img = rotate_image(img, 90)
cv.imwrite('90.jpg', rot_img)
rot_img = rotate_image(img, 135)
cv.imwrite('135.jpg', rot_img)
rot_img = rotate_image(img, 180)
cv.imwrite('180.jpg', rot_img)