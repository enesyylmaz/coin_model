# Use the official Tensorflow Serving image
FROM tensorflow/serving

# Copy the model folder to the container
COPY ./coin_model /models/coin_model

# Set the environment variable pointing to the model
ENV MODEL_NAME=coin_model

# Expose port 8501
EXPOSE 8501

# Start Tensorflow Serving
CMD ["tensorflow_model_server", "--port=8501", "--model_name=${MODEL_NAME}", "--model_base_path=/models/${MODEL_NAME}"]
