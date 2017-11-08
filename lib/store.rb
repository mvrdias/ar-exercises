
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, presence: true
  validates :mens_apparel, :womens_apparel, inclusion: { in: [true, false] }
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  # validate :must_carry_mens_or_womens_apparel
end

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# * BONUS: Stores must carry at least one of the men's or women's apparel
# (hint: use a [custom validation method](http://guides.rubyonrails.org/
# active_record_validations.html custom-methods) - **don't** use a `Validator` class)
  # def must_carry_mens_or_womens_apparel
  #   if mens_apparel == false && womens_apparel == false
  #     errors.add(:womens_apparel, "Store must carry at least one of the men's or women's apparel.")
  #   end
  # end
#   Add validations to two models to enforce the following business rules:
#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between 40 and 200
#   * Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that must be 0 or more