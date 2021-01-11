class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      #フォーレインでユーザーとルームテーブルの情報を参照している
      t.timestamps
    end
  end
end
