```console
TESTDATA="$(pwd)"
```

```console
docker run -t --rm -p 8501:8501 \
    -v "$TESTDATA/coin_model:/models/coin_model" \
    -e MODEL_NAME=coin_model \
    tensorflow/serving &
```
