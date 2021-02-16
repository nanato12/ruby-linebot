# Ruby LINEBOT

## .envの作成
LINEBotの各値を`.env`に記入。
```
LINE_CHANNEL_SECRET=XXXXXXXXXX
LINE_CHANNEL_TOKEN=XXXXXXXXXXXXXXXXXXXx
```

## gemモジュールのインストール
```sh
$ bundle install
```

## WEBサーバーの起動

```sh
$ bundle exec ruby app.rb -o 0.0.0.0
```

## フォーマッタ
- rufo
```sh
$ rufo app.rb
$ rufo linebot/
```
