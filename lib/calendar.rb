require 'date'

class Calendar
  def start_date
    start = Date.new(2019, 12, 16)
    start
  end

  def all_dates
    dates_array = []
    num = 0

    loop do
      dates_array << start_date + num
      num+=1
      if num >= 84
        break
      end
    end

    dates_array
  end

  def weekdays
    weekdays_array = all_dates.select do |day|
       day.monday? || day.tuesday? || day.wednesday? || day.thursday? || day.friday?
    end
    weekdays_array
  end

  def weekends
    weekends_array = all_dates.select do |day|
       day.saturday? || day.sunday?
    end
    weekends_array
  end

end
