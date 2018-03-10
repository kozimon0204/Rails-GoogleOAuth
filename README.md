# Rails-GoogleOAuth
RailsでGoogleOAuth

### 手順

GoogleOAuthのアカウントを取得し、GoogleクライアントIDとシークレットIDを取得する
環境変数にそれぞれを設定しておく

```
export GOOGLE_APP_ID=[クライアントID]
export GOOGLE_APP_SECRET=[シークレットID]
```

データベースを作成し、migrateしておく

```
rake db:create
rate db:migrate
```

### 参考ページ

[爆速ッ!! gem omniauth-google-oauth2 で認証させる](https://qiita.com/bino98/items/596b5cffeca7c104bd90)

[Google Authentication in Ruby On Rails](https://richonrails.com/articles/google-authentication-in-ruby-on-rails/?comments_page=2)

[deviseでログイン必須ページ、リダイレクトページ指定](https://qiita.com/mosa_siru/items/8dc8bb098f1dea6ffb5d)
