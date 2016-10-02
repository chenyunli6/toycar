class Car
  attr_accessor :x,:y,:direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def move
    case @direction
    when 'N'
      @y += 1
    when 'S'
      @y -= 1
    when 'E'
      @x += 1
    when 'W'
      @x -= 1
    end
    puts 'M'
  end

  def turn(target)
    if target == 'L'
      turn_to_left
    elsif target == 'R'
      turn_to_right
    end
    puts target
  end

  def turn_to_left

    direction_options = 'NWSE'

    old_index = direction_options.index(@direction)

    index = ( old_index + 1 ) % 4

    @direction = direction_options[index]

    # case @direction
    # when 'N'
    #   @direction = 'W'
    # when 'S'
    #   @direction = 'E'
    # when 'E'
    #   @direction = 'N'
    # when 'W'
    #   @direction = 'S'
    # end
  end

  def turn_to_right

    direction_options = 'NWSE'

    old_index = direction_options.index(@direction)

    index = old_index - 1

    @direction = direction_options[index]

    # case @direction
    # when 'N'
    #   @direction = 'E'
    # when 'S'
    #   @direction = 'W'
    # when 'E'
    #   @direction = 'S'
    # when 'W'
    #   @direction = 'N'
    # end
  end

end
