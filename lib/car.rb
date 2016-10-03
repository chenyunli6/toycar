class Car
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move

    move_options = { N: [0,1], S: [0,-1], E: [ 1,0 ], W: [-1, 0] }

    @x += move_options[@direction.to_sym][0]

    @y += move_options[@direction.to_sym][1]

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
