'''
As proposed in the paper "Merging grid maps of different resolutions by scaling registration"

(1) Extract SIFT features from Q and P and acquire feature matches
(2) Estimate initial transformation by method in section 3.4
(3) Extract the edge point sets, set To = Tbest, and calculate the
    optimal transformation by method in section 3.2
(4) Based on this transformation, obtain the merged map M by the method
    in section 3.5

Output: Merged map M
'''