class Employee < ActiveRecord::Base
  validates :name,:username, presence: {message: "should not be blank"}
  validates :phone, numericality: true
  validates :age, inclusion: {in: 0..100}
  validates :phone, length: { is: 10 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email,:phone,:username, uniqueness: true
end
