class Car
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move
    
    operators_options = { N: 1, S: -1, E: 1, W: -1  }

    move_operators = operators_options[@direction.to_sym]

    if 'NS'.include?(@direction)
      @y += move_operators
    elsif 'EW'.include?(@direction)
      @x += move_operators
    end

    puts 'M'
  end

  def turn(target)

    direction_options = 'NWSE'

    index = get_index(target, direction_options)

    @direction = direction_options[index]

    puts target
  end

  def get_index(target, direction_options)

    old_index = direction_options.index(@direction)

    direction_operators = { L: 1 , R: -1 }

    index = ( old_index + direction_operators[target.to_sym] ) % 4
  end

end
