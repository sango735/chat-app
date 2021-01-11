class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  #nameカラムにプレセンスを設ける事で空の場合はDBに保存しないという条件を設定

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  validates :name, presence: true
end
