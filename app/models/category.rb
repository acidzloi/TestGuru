class Category < ApplicationRecord
  def tests
    Test.where(category_id: id)
  end
end
