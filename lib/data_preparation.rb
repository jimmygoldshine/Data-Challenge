class DataPreparation

  def initialize
    @output = {}
  end

  def output
    @output
  end

  def read_file(file)
    file_to_array = []
    File.readlines(file).each do |line|
      airport = select_airport_key(line)
      @output[airport] = line
    end
    @output
  end

  def select_airport_key(string)
    index = string =~ (/(?<!\w)(K+\w{3})(?!\w)/)
    airport = string[index..index+3]
    airport.to_sym
  end

end
