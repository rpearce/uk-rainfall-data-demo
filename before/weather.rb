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
  # TODO: code goes here to change row[:jan] to a float (decimal)
  # and append it to the januaries array
end

januaries_sum = 0.0
januaries.each do |jan|
  # TODO: code goes here add jan to the
  # curren value of januaries_sum
  # and make sure januaries_sum stores
  # the new value. Should be 1 line of code :)
end

jan_avg_mm = # TODO: code here to divide januaries_sum by the size of the januaries array
puts "January Average: #{jan_avg_mm}mm"


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

puts "Total yearly average: #{TODO: WHAT GOES HERE?}mm"


####################################################################################################


# Volume of rainfall in the UK since 1910: (avg_rainfall(mm) / 1000000) * 242,495(km²)
uk_volume_kmsquared = 242495
rainfall_volume_kmcubed = (total_avg_mm / 1000000.0) * uk_volume_kmsquared
# TODO: code goes here to print the following to the Terminal
# Rainfall volume in the UK: 266.0572783207548km^3


####################################################################################################


# olympic pool dimensions: 50m in length, 25m in width, 1m deep (50 * 25 * 1 = volume)
pool_volume_kmcubed = 1.25**-6
number_of_pools = rainfall_volume_kmcubed.to_f / pool_volume_kmcubed
puts "Number of olympic-sized pools of rain: #{number_of_pools} pools"


####################################################################################################


# annual average as height of an average cat (23cm)
cat_height_mm = 230
cats_rained = total_avg_mm.to_f / cat_height_mm
puts "How deep are we in cats rained: #{cats_rained} cats"
