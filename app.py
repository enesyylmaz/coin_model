# app.py

from flask import Flask, request, jsonify
import requests
import json

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    data = request.json
    payload = json.dumps({"instances": data["data"]})
    headers = {"content-type": "application/json"}
    response = requests.post('http://localhost:8501/v1/models/coin_model:predict', data=payload, headers=headers)
    return jsonify(response.json())

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
