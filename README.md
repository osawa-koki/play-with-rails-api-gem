# my-api-mode-rails-template

🎇🎇🎇 APIモードのRailsテンプレートです！  

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
