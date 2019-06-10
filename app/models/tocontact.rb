class Tocontact < ApplicationRecord
  validates :email, presence: true, format: {
    with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    message: "За съжаление, този мейл е невалиден :("
  }
end
