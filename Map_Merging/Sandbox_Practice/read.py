import cv2 as cv

'''Reading Images'''

img = cv.imread(r'C:\Users\ryanl\OneDrive\Documents\GitHub\fyp_fleet_management\Map_Merging\Image_Stitching\Ver2\level5_hokuyo_crop1.jpg', cv.IMREAD_GRAYSCALE)

cv.imshow('Cat MEOW', img)

# cv.waitKey(0)

'''Reading Videos'''

# capture = cv.VideoCapture('Videos/catfight.mp4')

# try:
#     while True:
#         isTrue, frame = capture.read()
#         cv.imshow('Video', frame)
        
#         if cv.waitKey(20) & 0xFF==ord('d'):
#             break

#     capture.release()
#     cv.destroyAllWindows()

# except Exception as e:
#     print('The error encountered is', e)

'''Rescaling and Resizing'''
# def rescaleFrame(frame, scale = 0.50):
#     width = int(frame.shape[1] * scale)
#     height = int(frame.shape[0] * scale)
#     dimensions = (width, height) # Apparently need integers

#     return cv.resize(frame, dimensions, interpolation = cv.INTER_AREA)

# capture = cv.VideoCapture('Videos/catfight.mp4')

# try:
#     while True:
#         isTrue, frame = capture.read()
#         cv.imshow('Video', frame)
#         frame_resized = rescaleFrame(frame)
#         cv.imshow('HELLO', frame_resized)
        
#         if cv.waitKey(20) & 0xFF==ord('d'):
#             break

#     capture.release()
#     cv.destroyAllWindows()

# except Exception as e:
#     print('The error encountered is', e)

'''Draw and Write on Images'''

# import numpy as np

# img = cv.imread('Images/cat1.jpg')

# # Dummy image to work with
# blank = np.zeros((500, 500,3), dtype = 'uint8') # datatype of an image
# cv.imshow('Blank', blank)

# # Paint the image a certain colour
# blank[200:300, 300:400] = 0, 0, 255
# cv.imshow('Green', blank)

# cv.rectangle(blank, (0, 0), (blank.shape[1]//2, blank.shape[0]//2), (0, 255, 0), thickness = 2) # or thicknesds = cv.FILLED or = -1 to fill the rectangle
# cv.imshow('Rectangle', blank)

# cv.circle(blank, (250, 250), 40, (0,0,255), thickness = -1)
# cv.imshow('Circle', blank)

# # Write text on an image
# cv.putText(blank, 'Hello', (255,225), cv.FONT_HERSHEY_TRIPLEX, 1.0, (0,255,0), thickness = 2)
# cv.imshow('Text', blank)

'''5 Essential Functions in Python'''

# img = cv.imread('Images/cat1.jpg')
# cv.imshow('Meow', img)

# # # Converting image to grayscale
# # # Important for edge detection
# # gray = cv.cvtColor(img, cv.COLOR_BGR2GRAY) # BGR to grayscale
# # cv.imshow('Gray', gray)

# # Blurring an image
# blur = cv.GaussianBlur(img, (7,7), cv.BORDER_DEFAULT) # Kernel size need to be odd number
# cv.imshow('Blur', blur) # increase kernel size to increase blur

# # Edge Cascade
# canny = cv.Canny(blur, 75, 125) # Passing in the blurred image to the canny detector reduces the number of edges
# cv.imshow('Canny', canny)

# # Dilating the image
# dilated = cv.dilate(canny, (7,7), iterations = 2)
# cv.imshow('Dilated', dilated) # Dilating the edges

# # Eroding
# eroded = cv.erode(dilated, (7,7), iterations = 2) # Can sort of revert the edge cascade to original
# cv.imshow('Eroded', eroded)

# # Resize
# resize = cv.resize(img, (500, 500), interpolation=cv.INTER_AREA) # INTER_AREA good for shrinking
# cv.imshow('Resized', resize)

# # Cropping
# cropped = img[50:200, 200:400]
# cv.imshow('Cropped', cropped)

cv.waitKey(0)

