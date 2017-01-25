class TempTracker


  def initialize
    @mean = nil
    @max = nil
    @min = nil
    @mode = nil
    @number_of_readings = 0
    @total_temps = 0
    @observed = [0]*111
    @max_times_seen = 0
  end

  def insert(temp)
    @max = temp if @max.nil? || temp > @max
    @min = temp if @min.nil? || temp < @min

    @total_temps += temp
    @number_of_readings += 1

    @mean = @total_temps/@number_of_readings

    @observed[temp] += 1
    if @observed[temp] > @max_times_seen
      @mode = temp
      @max_times_seen = @observed[temp]
    end
  end

  def get_mean
    puts @mean
  end

  def get_mode
    puts @mode
  end

  def get_min
    puts @min
  end

  def get_max
    puts @max
  end

end

tt = TempTracker.new

tt.insert(10)
tt.get_mean
tt.get_mode
tt.get_min
tt.get_max

tt.insert(20)
tt.get_mean
tt.get_mode
tt.get_min
tt.get_max

tt.insert(30)
tt.get_mean
tt.get_mode
tt.get_min
tt.get_max
