class Timer

  attr_accessor :seconds, :time_string

  def initialize
    @start_time = Time.now
    @seconds = 0
  end

  def seconds
    @current_time = Time.now
    @seconds = @current_time - @start_time
    @seconds = @seconds.to_i
  end

  def time_string
    @hours = @seconds/3600
    @minutes = (@seconds - (@hours*3600))/60
    @seconds = @seconds - (@hours * 3600) - (@minutes * 60)
    if (@seconds < 10)
      @padded_seconds = "0"+@seconds.to_s
    else
      @padded_seconds = @seconds.to_s
    end
    if (@minutes < 10)
      @padded_minutes = "0"+@minutes.to_s
    else
      @padded_minutes = @minutes.to_s
    end
    if (@hours < 10)
      @padded_hours = "0"+@hours.to_s
    else
      @padded_hours = @hours.to_s
    end
    @time_string = @padded_hours+":"+@padded_minutes+":"+@padded_seconds
  end
  
end
