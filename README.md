# lambda-container-go-example

開発コンテナ立ち上げて中に入る
```
docker-compose up -d
docker-compose exec dev bash
```

コンテナ内でテスト待ち受け開始
（ビルドの後lambda-rieが動く）
```
/testrun.sh
```

コンテナ外でcurlを使ってテスト
```
curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"mode":"test"}'
```
