class Student < ApplicationRecord
	has_one :user, foreign_key: :email
  has_one :contract
  belongs_to :group

  after_create :create_user

  private
  def create_user
    student = Student.last
    user = User.create!(email: student.email, role: 2)
  end
end
