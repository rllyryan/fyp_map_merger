'''
[Imitating cv2.detail_ImageFeatures]
This class was created because cv2.detail_ImageFeatures.descriptor could not be accessed and assigned

Variable Types:
    - descriptors [UMat]
    - img_idx [int]
    - img_size [tuple]
    - keypoints [list of KeyPoint objects]

Created by: Lau Ler Young Ryan
Date: 27 Oct 2021
'''
class detail_ImageFeatures:
    
    def __init__(self, features, idx, size, kpts):
        self.descriptors = features
        self.img_idx = idx
        self.img_size = size
        self.keypoints = kpts
        pass

    def getKeypoints(self):
        return self.keypoints