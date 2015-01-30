class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates(:band_name, :presence => true)
  before_save(:capitalize_band_name)

  private

  define_method(:capitalize_band_name) do
    self.band_name = (band_name.titleize!())
  end
end
