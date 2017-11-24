
require_relative  './module'
require_relative  './module_counter'
require_relative  './module_valid'

class Car
  include Manufacturer
  include InstanceCounter
  include Valid

  variable_zero

  def initialize
    register_instance
  end

  def validate!
    raise ArgumentError, 'Указанные объекты не являются железнодорожными вагонами' if self.class != Car
  end
end

class PassengerCar < Car
  include Manufacturer
  include InstanceCounter
  include Valid

  variable_zero

  def validate!
    raise ArgumentError, 'Указанные объекты не являются пассажирскими вагонами' if self.class != PassengerCar
  end
end

class CargoCar < Car
  include Manufacturer
  include InstanceCounter
  include Valid

  variable_zero

  def validate!
    raise ArgumentError, 'Указанные объекты не являются товарными вагонами' if self.class != CargoCar
  end
end
