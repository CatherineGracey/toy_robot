class Robot

  #Create a new robot and table combination
  def initialize x, y
    @table = {:x => x - 1, :y => y - 1}
  end

  #Place the robot on a new location on the table
  def place x, y, f
    if (x >= 0 && x <= @table[:x]) && (y >= 0 && y <= @table[:y]) && (f == "NORTH" || f == "SOUTH" || f == "EAST" || f == "WEST")
      @x = x
      @y = y
      @f = f
    end
  end

  #Move the robot one tile in the direction it is facing
  def move
    if @f == "NORTH"
      if @x < @table[:x] - 1
        @x += 1
      end
    elsif @f == "SOUTH"
      if @x > 0
        @x -= 1
      end
    elsif @f == "EAST"
      if @y < @table[:y] - 1
        @y += 1
      end
    elsif @f == "WEST"
      if @y > 0
        @y -= 1
      end
    end
  end

  #Turn the robot to face left
  def left
    if @f == "NORTH"
      @f = "WEST"
    elsif @f == "WEST"
      @f = "SOUTH"
    elsif @f == "SOUTH"
      @f = "EAST"
    elsif @f == "EAST"
      @f = "NORTH"
    end
  end

  #Turn the robot to face right
  def right
    if @f == "NORTH"
      @f = "EAST"
    elsif @f == "EAST"
      @f = "SOUTH"
    elsif @f == "SOUTH"
      @f = "WEST"
    elsif @f == "WEST"
      @f = "NORTH"
    end
  end

  #Output the robot's current loccation and direction
  def report
    puts "#{@x}, #{@y}, #{@f}"
  end

end
