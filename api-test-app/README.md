# README

## 環境構築

### step1

docker-compose.ymlファイルがあるディレクトリに移動

### step2
```
docker-compose build
```

### step3
```
docker-compose up -d
```

### step4 初回のみ
```
docker-compose run --rm api rails db:create
```

もしくは
```
docker exec -it friends-rails /bin/bash
```
```
bin/rails db:create
```

### step5 初回のみ
step4のコマンド実行時に以下のエラー文が出る場合

Calling `DidYouMean::SPELL_CHECKERS.merge!(error_name => spell_checker)' has been deprecated.

bundlerを最新にアップデートする必要があるので、以下を実行する
```
docker-compose run --rm api bundle update --bundler
```

### step6
```
http://localhost:3000/
```
