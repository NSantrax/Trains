module Valid
  def valid? # Проверка формата номера поезда и количества вагонов
    validate!
    true
  rescue
    false
  end
end
