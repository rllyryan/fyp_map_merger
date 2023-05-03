'''
This class was created because cv2.detail_ImageFeatures.descriptor cannot be accessed

Variable Types:
    - descriptors [UMat]
    - img_idx [int]
    - img_size [tuple]
    - keypoints [list of KeyPoint objects]
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