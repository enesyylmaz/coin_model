```console
TESTDATA="$(pwd)"
```

```console
docker run -t --rm -p 8501:8501 \
    -v "$TESTDATA/coin_model:/models/coin_model" \
    -e MODEL_NAME=coin_model \
    tensorflow/serving &
```

```console
docker build -t tensorflow_serving_coin_model .

```
```console
docker run -p 8501:8501 --name tf_serving_coin_model -t tensorflow_serving_coin_model
```
