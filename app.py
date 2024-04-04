import os
from flask import Flask, render_template, request
from keras.models import load_model
from keras.preprocessing import image
import numpy as np
import pickle

app = Flask(__name__)

class_names = ['agricultural', 'airplane', 'baseballdiamond', 'beach', 'buildings', 'chaparral', 'denseresidential', 'forest', 'freeway', 'golfcourse', 'harbor', 'intersection', 'mediumresidential', 'mobilehomepark', 'overpass', 'parkinglot', 'river', 'runway', 'sparseresidential', 'storagetanks', 'tenniscourt']

dic = {i: class_name for i, class_name in enumerate(class_names)}

# Load the Keras model outside the function
model = None

def load_keras_model():
    global model
    model = load_model('model.h5')

# Ensure the model is loaded when the application starts
load_keras_model()

def predict_label(img_path):
    try:
        img = image.load_img(img_path, target_size=(250, 250))
        img = image.img_to_array(img) / 255.0
        img = img.reshape(1, 250, 250, 3)
        
        # Get the model's prediction probabilities
        probabilities = model.predict(img)
        
        # Get the index of the class with the highest probability
        predicted_class_index = np.argmax(probabilities)
        
        # Get the predicted class name using the dictionary
        predicted_class_name = dic[predicted_class_index]
        
        return predicted_class_name
    except Exception as e:
        return "Error: " + str(e)

# routes
@app.route("/", methods=['GET', 'POST'])
def main():
    return render_template("index.html")

@app.route("/about")
def about_page():
    return "Please subscribe Artificial Intelligence Hub..!!!"

@app.route("/submit", methods=['GET', 'POST'])
def get_output():
    if request.method == 'POST':
        img = request.files['my_image']
        img_path = "static/" + img.filename    
        img.save(img_path)
        p = predict_label(img_path)
        
        return render_template("index.html", prediction=p, img_path=img_path)
    return render_template("index.html")

if __name__ =='__main__':
    app.run(host='0.0.0.0',port=80)
