class Timer

  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = '00:00:00'
  end

  def seconds=(seconds)

    @seconds = seconds

    hours = seconds / (60*60)
    remaining_seconds = seconds % (60*60)

    minutes = remaining_seconds / 60

    seconds = remaining_seconds % 60

    @time_string = '%02d:%02d:%02d' % [hours, minutes, seconds]

  end

end
