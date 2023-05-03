import cv2 as cv

class MapCropper:
    
    def __init__(self):
        pass
    '''
    [POINT OF MODIFICATION]

    Add padding variable
    '''
    def crop(self, img, padding = 20, cvtcolor_flag = False):
        if cvtcolor_flag:
            gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY)
        else:
            gray = img
        boundary_pixel = gray[0][0]
        _, binary = cv.threshold(gray, boundary_pixel, 255, cv.THRESH_BINARY)
        contours = cv.findContours(binary, cv.RETR_EXTERNAL, cv.CHAIN_APPROX_SIMPLE)[-2]
        contours = sorted(contours, key = cv.contourArea)[-1]
        x,y,w,h = cv.boundingRect(contours)
        cropped_img = img[y-padding:y+h+padding, x-padding:x+w+padding]
        
        return cropped_img