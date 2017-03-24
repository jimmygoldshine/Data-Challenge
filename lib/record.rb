class Record

  attr_reader :visibility, :wind_speed, :cloud_ceiling

  def initialize(string)
    @string = string
    @visibility
    @wind_speed
    @cloud_ceiling
  end

  def objectify
    extract_visibility
    extract_wind_speed
    extract_cloud_ceiling
    self
  end

  private

  def extract_visibility
    index = @string =~ /(?<=\s)(\w{2}+SM)(?=\s)/
    @visibility = @string[index..index+1].to_i
  end

  def extract_wind_speed
    index = @string =~ /(?<=\d{3})(\d{2})(?=KT)/
    @wind_speed = @string[index..index+1].to_i
  end

  def extract_cloud_ceiling
    index = @string =~ /(?<=\w{3})(\d{3})(?=\s)/
    if index
      @cloud_ceiling = "#{@string[index..index+2]}0".to_i
    else
      @cloud_ceiling = 12000
    end
  end

end
