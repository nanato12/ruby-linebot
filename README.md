# ruby-linebot
暇だからrubyでlinebot作ってみる。

主に`line-bot-sdk-ruby`の更新に使用する。

## パッケージ管理
- gem
- builder

## docker
```sh
$ docker build . -t ruby-bot
$ docker run --name ruby-linebot -itd -p 8888:4567 --workdir /workspace -v $PWD/workspace:/workspace ruby-bot
$ docker exec -i -t ruby-linebot /bin/sh
```
