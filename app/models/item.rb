class Item < ApplicationRecord
  has_many :cart_item
  def self.search(keyword)
    where(['name LIKE ? AND stock > 0', "%#{keyword}%"])
  end
end
