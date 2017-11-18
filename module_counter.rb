# Усложенное задание: Создать модуль InstanceCounter, содержащий следующие методы класса и инстанс-методы, которые подключаются автоматически
# при вызове include в классе:
# Методы класса:
# instances, который возвращает кол-во экземпляров данного класса
# Инастанс-методы:
# register_instance, который увеличивает счетчик кол-ва экземпляров класса и который можно вызвать из конструктора. При этом, данный метод не должен быть публичным.
module InstanceCounter
  def self.included(base)
    base.extend ClassMetods
    base.send :include, InstanceMetods
  end

  module ClassMetods
    def variable_zero
      @instances = 0
      #!!! запись @instances ||= 0 означает что если @instances не определен, то установить в 0, в противном случае вернуть значение @instances. Заодно можем избавиться от метода instances.
       # А что будет при перезапуске в irb? Значение не обнулится и будет считатьсро методя дальше? 
       # Про метод instances - не хотела у меня вызываться переменная, только через метод, и в поездах тоже куча таких методов
    end

    def variable
      @instances += 1
    end

    def instances
      @instances
    end
  end

  module InstanceMetods
    protected
    def register_instance
      self.class.variable
    end
  end
end
