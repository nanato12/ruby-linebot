# Ruby LINEBOT

## .envの作成
LINEBotの各値を`.env`に記入。
```
LINE_CHANNEL_SECRET=XXXXXXXXXX
LINE_CHANNEL_TOKEN=XXXXXXXXXXXXXXXXXXXx
```

## gemモジュールのインストール
```sh
$ bundle install --path vendor/bundle
```

## WEBサーバーの起動

```sh
$ bundle exec ruby app.rb
```

## フォーマッタ
- rufo

```sh
$ rufo .
```
