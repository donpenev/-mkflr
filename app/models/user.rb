class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :account

  def move_to(user)
    todos.update_all(user_id: user.id)
  end
end

# user_signed_in? => boolean
# current_user => user instance
