class Car
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
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

    direction_options = 'NWSE'

    index = get_index(target, direction_options)

    @direction = direction_options[index]

    puts target
  end

  def get_index(target, direction_options)

    old_index = direction_options.index(@direction)

    index =
      case target
      when 'L'
        (old_index + 1) % 4
      when 'R'
        old_index - 1
      end
  end

end
