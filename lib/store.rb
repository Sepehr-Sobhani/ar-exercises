
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validate :men_or_women
  
  before_destroy :without_staff?, prepend: true



  private 

  def men_or_women
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Stores must carry at least one of the men's or women's apparel")
    end
  end 

  def without_staff?
    Store.find(self.id).employees.size < 1
  end

end
