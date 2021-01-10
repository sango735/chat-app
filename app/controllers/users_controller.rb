class UsersController < ApplicationController
  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
    #保存可否で条件分岐を処理する
    #成功→リダイレクトする
    #失敗→editのビューが表示される
  end
  #ストロングパラメーターを使用してuser_paramsを定義する
  #user_paramsに続く↓

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
  #permitメソッドでnameとemailの編集を許可している
end
