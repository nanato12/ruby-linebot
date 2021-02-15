# ruby-linebot
暇だからrubyでlinebot作ってみる。

主に`line-bot-sdk-ruby`の更新に使用する。

## submodule
- https://github.com/nanato12/line-bot-sdk-ruby  
こちらのSDKを使用する。

```sh
$ git submodule update
```

## パッケージ管理
- gem
- builder

## docker
```sh
$ docker build . -t ruby-bot
$ docker run --name ruby-linebot -itd -p 8888:4567 --workdir /workspace -v $PWD/workspace:/workspace ruby-bot
$ docker exec -it ruby-linebot /bin/sh
```
