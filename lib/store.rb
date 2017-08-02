class Store < ActiveRecord::Base

  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :mens_or_womens_apparel_true

  def mens_or_womens_apparel_true
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel_womens_apparel, "mens_apparel or womens_apparel must be true")
    end
  end

end
