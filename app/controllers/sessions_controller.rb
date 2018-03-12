# 
# セッション関係の処理
# 
class SessionsController < ApplicationController

  # ログアウト処理
  def destroy
    sign_out_and_redirect current_user
  end

end
