class Profile < ApplicationRecord
  before_save {self.nickname = nickname.downcase}
  validates :name, presence: true,
                   length: {maximum: 50}
  validates :lastname, presence: true,
                       length: {maximum: 50}
  validates :nickname, presence: true,
                       length: {maximum: 50},
                       uniqueness: true

end
