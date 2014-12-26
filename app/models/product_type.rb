class ProductType < ActiveRecord::Base
  before_save :set_display_name

  private

  def set_display_name
    self.display_name = name.titleize
  end
end
