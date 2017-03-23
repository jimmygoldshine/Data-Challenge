class DataPreparation

  def initialize
    @output = {}
  end

  def output
    @output
  end

  def read_file(file)
    file_to_array = []
    File.foreach(file) do |line|
      file_to_array << line
    end
    file_to_array
  end

  def select_airport_key(string)
    index = string =~ (/(?<!\w)(K+\w{3})(?!\w)/)
    airport = string[20..23]
    airport.to_sym
  end

end
