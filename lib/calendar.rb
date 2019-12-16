require 'date'

class Calendar

  def all_dates
    start_date = Date.new(2019, 12, 16)
    dates_array = []
    num = 0

    until num >= 84 do
      dates_array << start_date + num
      num+=1
    end

    dates_array
  end

  def weekends
    weekends_array = all_dates.select do |day|
       day.saturday? || day.sunday?
    end
    weekends_array
  end

end
