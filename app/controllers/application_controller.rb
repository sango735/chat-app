class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  #deviseのコントローラーから呼び出された場合、configure~メソッドが呼ばれる 
  #deviseをインストールする事でdevise_parameter~メソッドが使えるようになる。
  #これは特定のカラムを許容するメソッドの為、今回はnameカラムをpermitメソッドで許可して保存している
end
