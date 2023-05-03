import cv2 as cv
import numpy as np
import sys

# from map_cropper import MapCropper
# cropper = MapCropper()

class BackgroundRemover():

    def __init__(self):
        pass

    def remove_background(self, image):
        gray = cv.cvtColor(image, cv.COLOR_BGR2GRAY)
        mask = gray.copy()

        # Thresholding does not help to make the mask effectively
        # We are locating all the black contours, and overwriting their pixel values to 255
        # and locating all the 'grey' background, and overwriting their pixel values to 0
        black = np.where((mask[:,:] < 50))
        grey = np.where((mask[:,:] < 240) & (mask[:,:] > 60))

        # In the alpha channel, 0 means fully transparent, while 255 means opaque
        mask[black] = 255
        mask[grey] = 0

        # Put mask into alpha channel
        image_with_alpha = image.copy()
        image_with_alpha = cv.cvtColor(image_with_alpha, cv.COLOR_BGR2BGRA)
        image_with_alpha[:, :, 3] = mask

        cv.imwrite('Image_without_bckgd.png', image_with_alpha)
        
        return image_with_alpha

