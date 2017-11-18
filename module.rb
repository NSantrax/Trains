# Создать модуль, который позволит указывать название компании-производителя и получать его. Подключить модуль к классам Вагон и Поезд
module Manufacturer
  attr_accessor :manufacturer

  # ЕСЛИ ЕСТЬ attr_accessor ТО НЕ ВИЖУ СМЫСЛА В ДВУХ МЕТОДАХ НИЖЕ # C первым - согласна. Почему-то переменная не хотела вызываться из другого файла без метода.))
  def assign_manufacturer(manufacturer)
    @manufacturer = manufacturer
  end

  def manufacturer
    @manufacturer
  end
end
