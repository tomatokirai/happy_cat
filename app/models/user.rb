class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :nickname
    validates :age
    validates :birth_day
    validates :breed
    validates :birth_place
    validates :raise
    validates :charm_point
    validates :personality
    validates :encounter
  end
end
