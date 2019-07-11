class MemberAccount < ApplicationRecord
	belongs_to :user
	validates :first_name, :last_name, :picture, presence:true
  validates :age, numericality: { only_integer: true }
	has_one_attached :picture

end
