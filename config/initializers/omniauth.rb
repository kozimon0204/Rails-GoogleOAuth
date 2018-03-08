OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
  ENV['GOOGLE_APP_ID'], # 環境変数にクライアントIDを入れておく
  ENV['GOOGLE_APP_SECRET'], # 環境変数にシークレットを入れておく
  {
      client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}
    }
end