class MessagesController < ApplicationController
    # ログインしていない場合にログイン画面に遷移させる。
  before_action :authenticate_user!

  def index
  end
end
