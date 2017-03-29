require './lib/data_preparation.rb'
require './lib/record.rb'
require './lib/data_analysis.rb'



data = DataPreparation.new(Record)
output = data.execute("./sample.txt")
analysis = DataAnalysis.new(data)
analysis.add_ranks

# Top 15 for the three key attributes
analysis.rank("top", "cloud_ceiling", "./top_cloud_ceiling.csv")
# analysis.rank("top", "visibility", "./top_visibility.csv")
# analysis.rank("top", "wind_speed", "./top_wind_speed.csv")

# Bottom 15 for the three key attributes
analysis.rank("bottom", "cloud_ceiling", "./bottom_cloud_ceiling.csv")
# analysis.rank("bottom", "visibility", "./bottom_visibility.csv")
# analysis.rank("bottom", "wind_speed", "./bottom_wind_speed.csv")
