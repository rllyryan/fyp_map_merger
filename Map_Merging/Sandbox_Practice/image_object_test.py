from django.core.files.images import ImageFile
from django.core.files.uploadedfile import InMemoryUploadedFile
from PIL import Image, ImageDraw
import cv2 as cv
import io
import sys

img = cv.imread('Images/level5_hokuyo.jpg')
img_pil = Image.fromarray(img)
# print('Converted to pillow object {}'.format(type(img_pil)))
# print(img_pil)
# img_pil.show()
################## Converted to Pillow Image #################
img_io = io.BytesIO()
img_pil.save(img_io, format = 'jpeg')
img_byte_arr = img_io.getvalue()
print('Converted to Bytes object {}'.format(type(img_byte_arr)))
# print(img_byte_arr)
# img_pil.show()
file = InMemoryUploadedFile(file = img_io, field_name = 'merged_image', name = 'merged_image.jpg', 
                            content_type = 'JPEG', size = sys.getsizeof(img_io), charset = None)
print('Converted to Django object {}'.format(type(file)))
################## Converted to InMemoryUploadFile #############
byte = file.file.getvalue()
# Image.open(dataBytesIO)
image = Image.open(io.BytesIO(byte))
image.show()
# print(type(image))
# image.show()