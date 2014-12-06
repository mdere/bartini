module ApplicationHelper
  def datafile(drink_id)
    DataStorage.find_by(drink_id: drink_id)
  end
end
