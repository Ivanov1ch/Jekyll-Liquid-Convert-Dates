require 'liquid'

module MonthYear
  def month_year(date)
    monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

    # We want the date to be in the default Jekyll format: YYYY-MM-DD HH:MM:SS +/-TTTT, but all we need is the YYYY-MM-DD part
    dateString = date.to_s.split[0]
    textLength = dateString.length

    if textLength < 8 || textLength > 10 || dateString.count('-') != 2
      return date
    end

    dateComponents = dateString.split('-')

    year = dateComponents[0]
    month = dateComponents[1].to_i

    if month > 12 || month < 1
      return date
    end

    monthName = monthNames[month - 1]
    return monthName + " " + year
  end
end

Liquid::Template.register_filter(MonthYear)
