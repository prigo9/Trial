import numpy as np
import cv2
from matplotlib import pyplot as plt

num_shapes = {
    'square': 0,
    'triangle': 0,
    'rectangle': 0,
    'circle': 0,
    'pentagon': 0
}


def detectShape(cnt):
    shape = 'unknown'
    peri = cv2.arcLength(c, True)
    vertices = cv2.approxPolyDP(c, 0.04 * peri, True)
    if len(vertices) == 3:
        shape = 'triangle'
    elif len(vertices) == 4:
        x, y, width, height = cv2.boundingRect(vertices)
        aspectRatio = float(width) / height
        if aspectRatio >= 0.95 and aspectRatio <= 1.05:
            shape = "square"
        else:
            shape = "rectangle"
    elif len(vertices) == 5:
        shape = "pentagon"
    else:
        shape = "circle"
    num_shapes[shape] += 1
    cnt = vertices
    cnt = np.append(cnt, [[cnt[0][0][0], cnt[0][0][1]]])
    cnt = np.reshape(cnt, (len(vertices)+1, 1, 2))
    M = cv2.moments(cnt)
    cX = int(M['m10'] / M['m00'])
    cY = int(M['m01'] / M['m00'])
    cv2.drawContours(image, [c], -1, (0, 255, 0), 2)
    cv2.putText(image, '{}{}'.format(shape, str(num_shapes[shape])), (cX, cY), cv2.FONT_HERSHEY_SIMPLEX,
                0.5, (0, 0, 0), 2)
    print('Area of {}{} = {}  perimeter {} '.format(
        shape, num_shapes[shape], M['m00'], peri))
    return


i = int(input('enter option 1.Contour 2.Edge Detection 3.Feature Matching 4.corner Detectionb5.Shape Recognition'))
if i == 1:
    image = cv2.imread('shap.png')
    gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    ret, thresh = cv2.threshold(gray_image, 127, 255, 0)
    contours, hierarchy = cv2.findContours(
        thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
    with_contours = cv2.drawContours(image, contours, -1, (0, 255, 0), 3)
    plt.imshow(with_contours)
    plt.show()

elif i == 2:
    image = cv2.imread('edge.jpg')
    edges = cv2.Canny(image, 100, 200)
    plt.imshow(edges)
    plt.show()
elif i == 3:
    img1 = cv2.imread('messi1.jpg', 0)
    img2 = cv2.imread('messi2.jpg', 0)
    orb = cv2.ORB_create()
    kp1, des1 = orb.detectAndCompute(img1, None)
    kp2, des2 = orb.detectAndCompute(img2, None)
    bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
    matches = bf.match(des1, des2)
    matches = sorted(matches, key=lambda x: x.distance)
    img3 = cv2.drawMatches(img1, kp1, img2, kp2, matches[:10], None, flags=2)
    plt.imshow(img3), plt.show()
elif i == 4:
    img = cv2.imread("house.jpg")
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    gray = np.float32(gray)
    dst = cv2.cornerHarris(gray, 2, 3, 0.04)
    dst = cv2.dilate(dst, None)
    img[dst > 0.01*dst.max()] = [0, 255, 0]
    cv2.imshow('dst', img)
    if cv2.waitKey(0) & 0xff == 27:
        cv2.destroyAllWindows()
else:
    image = cv2.imread('smile1.png')
    cv2.imshow("Original", image)
    grayScale = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    sigma = 0.33
    v = np.median(grayScale)
    low = int(max(0, (1.0 - sigma) * v))
    high = int(min(255, (1.0 + sigma) * v))
    edged = cv2.Canny(grayScale, low, high)
    (cnts, _) = cv2.findContours(
        edged, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
    for c in cnts:
        detectShape(c)
    cv2.imshow("Image", image)
    cv2.waitKey(0)
    cv2.destroyAllWindows()
