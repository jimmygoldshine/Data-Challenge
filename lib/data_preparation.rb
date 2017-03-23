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


end
