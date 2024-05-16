FROM tensorflow/serving

COPY coin_model /models/coin_model

ENV MODEL_NAME coin_model

ENTRYPOINT ["/usr/bin/tf_serving_entrypoint.sh"]