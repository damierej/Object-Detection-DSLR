import cv2
import os

def resize_images(input_dir, output_dir, size=(224, 224)):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    for root, dirs, files in os.walk(input_dir):
        for file in files:
            if file.endswith(('.jpg', '.jpeg', '.png', '.CR3')):
                img_path = os.path.join(root, file)
                img = cv2.imread(img_path)
                if img is not None:
                    img_resized = cv2.resize(img, size)
                    rel_path = os.path.relpath(root, input_dir)
                    out_dir = os.path.join(output_dir, rel_path)
                    if not os.path.exists(out_dir):
                        os.makedirs(out_dir)
                    cv2.imwrite(os.path.join(out_dir, file), img_resized)

# Paths
input_dir = r'C:\Users\dvjacks\OneDrive - IL State University\Desktop\SecurityCam\dataset'
output_dir = r'C:\Users\dvjacks\OneDrive - IL State University\Desktop\SecurityCam\dataset_resized'

# Resize images
resize_images(input_dir, output_dir)