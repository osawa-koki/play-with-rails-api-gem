# play-with-rails-api-gem

🎇🎇🎇 APIモードのRailsで有用と思われるgemを試すためのリポジトリです！  

## 実行方法

### ローカル環境 (Dockerあり)

```shell
docker build -t my-api-mode-rails-template .
docker run -it -p 8000:8000 --rm --name my-api-mode-rails-template my-api-mode-rails-template
```

### ローカル環境 (Dockerなし)

```shell
bundle install

rails db:create
rails db:migrate
rails db:seed

rails server --port 8000
```

## 環境変数

| 環境変数名 | 説明 |
| --- | --- |
| RAILS_ENV | Railsの実行環境を指定します。 |
| HOST | ホストを指定します。 |
| SECRET_KEY_BASE | Railsのシークレットキーを指定します。 |
