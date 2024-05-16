# Use an official TensorFlow Serving runtime as a parent image
FROM tensorflow/serving

# Set the directory where the model will be mounted inside the container
ENV TESTDATA /models/coin_model

# Copy the model directory from the host into the container
COPY coin_model /models/coin_model

# Set the environment variable for the model name
ENV MODEL_NAME coin_model

# Expose the gRPC and HTTP ports for serving the model
EXPOSE 8500
EXPOSE 8501

# Command to start TensorFlow Serving
CMD ["tensorflow_model_server", "--port=8500", "--rest_api_port=8501", "--model_name=${MODEL_NAME}", "--model_base_path=${TESTDATA}/${MODEL_NAME}"]
