class Item < ApplicationRecord
  def self.search(keyword)
    where(['name LIKE ? AND stock > 0', "%#{keyword}%"])
  end
end
