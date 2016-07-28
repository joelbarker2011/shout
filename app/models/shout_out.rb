class ShoutOut < ApplicationRecord
  def map_link
    latitude && longitude ? "https://www.google.com/maps/@#{latitude},#{longitude},18z" : nil
  end
end
