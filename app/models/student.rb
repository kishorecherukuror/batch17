class Student < ActiveRecord::Base
  validates :fname, presence: true
  before_save :fullname
  after_save :add_space
  
  def fullname
    @fname = self.fname
    @lname = self.lname
    self.name = @fname + @lname
  end
  def add_space
    spacename = @fname + " " + @lname
    self.update_column(:name , spacename)
  end
end
