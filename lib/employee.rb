class Employee < ActiveRecord::Base
  belongs_to :store
  validates_associated :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200,
    only_integer: true
  }
  # for comparing after and before creating
  # after_create :create_password
  
  before_create :create_password
  
  private
  
  def create_password
    self.password = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    
    # for comparing after and before creating
    # self.save
  end
end
