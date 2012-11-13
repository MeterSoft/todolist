class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :title, :description, :age

  validates :age, :numericality => {:greater_than => 1}


  def full_name
    "#{first_name} #{last_name}"
  end
end
