Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  #ユーザー編集に必要なルーティングを追記する。
  #その後コマンドでcontrollerを作成する
  resources :rooms, only: [:new, :create]
end
