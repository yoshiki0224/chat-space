class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
<<<<<<< HEAD
=======
  has_many :messages
>>>>>>> 1055be327df159b918ea680e41dfa4394318512d
  validates :name, presence: true
end
