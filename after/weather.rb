require "csv"

rows = []

CSV.foreach("../wd.csv", headers: true, header_converters: :symbol) do |row|
  rows.push(row)
end

puts "##############"
puts "Since 1910..."
puts "##############\n\n"


####################################################################################################


# January average since 1910 (mm)
januaries = []
rows.each do |row|
  januaries.push(row[:jan].to_f)
end

januaries_sum = 0.0
januaries.each do |jan|
  januaries_sum += jan
end

jan_avg_mm = januaries_sum / januaries.size
puts "January Average: #{jan_avg_mm}mm"

# jan_avg_mm = rows.map { |r| r[:jan] }.map(&:to_i).reduce(:+) / rows.size # FANCY WAY


####################################################################################################


# Annual average since 1910 (mm)
annuals = []
rows.each do |row|
  annuals.push(row[:ann].to_f)
end

annuals_sum = 0.0
annuals.each do |ann|
  annuals_sum += ann
end

total_avg_mm = annuals_sum / annuals.size

puts "Total yearly average: #{total_avg_mm}mm"

# total_avg_mm = rows.map { |r| r[:ann] }.map(&:to_f).reduce(:+) / rows.size # FANCY WAY


####################################################################################################


# Volume of rainfall in the UK since 1910: (avg_rainfall(mm) / 1000000) * 242,495(km²)
rainfall_volume_kmcubed = (total_avg_mm / 1000000.0) * 242495
puts "Rainfall volume in UK: #{rainfall_volume_kmcubed}km^3"


####################################################################################################


# olympic pool dimensions: 50m in length, 25m in width, 1m deep (50 * 25 * 1 = volume)
pool_volume_kmcubed = 1.25**-6
number_of_pools = rainfall_volume_kmcubed / pool_volume_kmcubed
puts "Number of olympic-sized pools of rain: #{number_of_pools} pools"


####################################################################################################


# annual average as height of an average cat (23cm)
cat_height_mm = 230
cats_rained = total_avg_mm.to_f / cat_height_mm
puts "How deep are we in cats rained: #{cats_rained} cats"
