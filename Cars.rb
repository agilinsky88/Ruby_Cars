class Vehicle
    attr_accessor :signal, :wheels, :lights, :model_year, :speed, :model

    def initialize(y, x, signal="off", wheels=4, lights=false)
        @signal = signal
        @model = x
        @model_year = y
        @wheels = wheels
        @lights = lights
        @speed = 0
    end
    def switchLights
        @lights = !(@lights)
    end

    def turnSignal(signal)
        @signal = signal
        if @signal == "right" || @signal == "left"
            p "I want to turn " + @signal
        else
            p "turn signal is off"
        end
    end
end

class Car < Vehicle
end


class Tesla < Car
    def acceleration
        @speed = speed + 10
    end
    def brake
        @speed = speed - 7
    end
end

class Tata < Car
    def acceleration
        @speed = speed + 2
    end
    def brake
        @speed = speed - 1.25
    end
end

class Toyota < Car
    def acceleration
        @speed = speed + 7
    end
    def brake
        @speed = speed - 5
    end
end


tata = Tata.new(2013, "Nexon")
tataOne = Tata.new(2012, "Hexa")

toyota = Toyota.new(2011, "Camry")
toyotaOne = Toyota.new(2014, "Tacoma")

tesla = Tesla.new(2010, "Model S")
teslaOne = Tesla.new(2015, "Model X")

allCars = [tata, tataOne, toyota, toyotaOne, tesla, teslaOne]


# allCars.sort_by(&:model_year)
# p allCars.sort_by(&:model <=> :model_year)

p allCars.sort_by{ |model, model_year| model <=> model_year }
