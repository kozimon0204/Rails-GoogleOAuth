class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :registerable, :recoverable, 
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable, :timeoutable, :omniauthable
    # googleOAuthからのレスポンスを得て、ユーザテーブルに以下情報を登録
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.name = auth.info.name
          user.oauth_token = auth.credentials.token
          user.oauth_expires_at = Time.at(auth.credentials.expires_at)

          user.email = auth.info.email
          user.password = Devise.friendly_token[0, 20]


          user.save!

          user
        end

    end

    
    
end
