class DataAnalysis

  def initialize(data)
    @data = data.output
  end

  def rank(condition, attribute)
    sorted = @data.sort_by do |airport, records|
      case attribute
      when "cloud_ceiling"
        records[0][0]
      when "visibility"
        records[0][1]
      when "wind_speed"
        records[0][1]
      else
        raise "Invalid attribute"
      end
    end
    if condition == "top"
      sorted = sorted.reverse[0..14]
    elsif condition == "bottom"
      sorted = sorted[0..14]
    else
      raise "Invalid condition"
    end
    sorted
  end

end
