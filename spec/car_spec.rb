require 'car'

RSpec.describe Car, "#y" do
  context "move the car form north"  do
    it "move the car from north to north" do
      car = Car.new(1,2,'N')
      expect{car.move}.to change{car.y}.by(1)
    end
  end

  context "move the car from south"  do
    it "move the car from south" do
      car = Car.new(1,2,'S')
      expect{car.move}.to change{car.y}.by(-1)
    end
  end

  context "move the car from east"  do
    it "move the car from east" do
      car = Car.new(1,2,'E')
      expect{car.move}.to change{car.x}.by(+1)
    end
  end

  context "move the car from west"  do
    it "move the car from west" do
      car = Car.new(1,2,'W')
      expect{car.move}.to change{car.x}.by(-1)
    end
  end

  context "turn the car from north to west"  do
    it "turn the car from notrh to west" do
      car = Car.new(1,2,'N')
      expect{car.turn('L')}.to change{car.direction}.from('N').to('W')
    end
  end

  context "turn the car from north to east"  do
    it "turn the car from notrh to east" do
      car = Car.new(1,2,'N')
      expect{car.turn('R')}.to change{car.direction}.from('N').to('E')
    end
  end

  context "turn the car from south to west"  do
    it "turn the car from south to west" do
      car = Car.new(1,2,'S')
      expect{car.turn('R')}.to change{car.direction}.from('S').to('W')
    end
  end

  context "turn the car from south to east"  do
    it "turn the car from south to east" do
      car = Car.new(1,2,'S')
      expect{car.turn('L')}.to change{car.direction}.from('S').to('E')
    end
  end

  context "turn the car from east to north"  do
    it "turn the car from east to north" do
      car = Car.new(1,2,'E')
      expect{car.turn('L')}.to change{car.direction}.from('E').to('N')
    end
  end

  context "turn the car from east to south"  do
    it "turn the car from east to south" do
      car = Car.new(1,2,'E')
      expect{car.turn('R')}.to change{car.direction}.from('E').to('S')
    end
  end

  context "turn the car from west to north"  do
    it "turn the car from east to north" do
      car = Car.new(1,2,'W')
      expect{car.turn('R')}.to change{car.direction}.from('W').to('N')
    end
  end

  context "turn the car from west to south"  do
    it "turn the car from west to south" do
      car = Car.new(1,2,'W')
      expect{car.turn('L')}.to change{car.direction}.from('W').to('S')
    end
  end

end
