class Record

  attr_reader :visibility, :windspeed, :cloud_ceiling

  def initialize(string)
    @string = string
    @visibility
    @windspeed
    @cloud_ceiling
  end

  def objectify
    extract_visibility
    self
  end

  def extract_visibility
    index = @string =~ /(?<=\s)(\w{2}+SM)(?=\s)/
    @visibility = @string[index..index+3]
  end

end
