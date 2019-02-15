class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
  has_many :messages
  has_many :group_users
  has_many :groups, through: :group_users
=======

  has_many :messages
  has_many :group_users
  has_many :groups,through: :group_users
>>>>>>> 1055be327df159b918ea680e41dfa4394318512d
end
