# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Location
t.float :longitude
t.float :latitude


#Trails
# t.string :name
# t.integer :miles
# t.string :trail_type
# t.integer :bike_trails_counters_id


west_seatle_trail = BikeTrail.create(name: "West Seattle Trail", distance: 13, trail_type: "Paved Road", bike_trails_counters_id: 1 )


#Counters
# t.datetime, :date_time
# t.integer :total_trips
# t.integer :direction_1
# t.integer :direction_2
# t.integer :bike_trails_counters_id
# t.integer :location_id




#West Seattle Bridge

# #January
# jan_url =  "https://data.seattle.gov/resource/upms-nr8w.json?$where=date between '2019-01-01T00:00:00' and '2019-01-31T23:59:59'"


# response = RestClient.get(url)
# response_body = response.body
# json_response = JSON.parse(response_body)

# wsc_january = json_response.map do |trip| 
#   {date_time: trip["date"],
#   total_trips: trip["spokane_st_bridge_total"].to_i,
#   direction_1: trip["west"].to_i,
#   direction_2: trip["east"].to_i,
#   bike_trails_counters_id: 1,
#   location_id: 1}

# end

#February
url =  "https://data.seattle.gov/resource/upms-nr8w.json?$where=date between '2019-02-01T00:00:00' and '2019-02-28T23:59:59'"


response = RestClient.get(url)
response_body = response.body
json_response = JSON.parse(response_body)

wsc_february = json_response.map do |trip| 
  {date_time: trip["date"],
  total_trips: trip["spokane_st_bridge_total"].to_i,
  direction_1: trip["west"].to_i,
  direction_2: trip["east"].to_i,
  bike_trails_counters_id: 1,
  location_id: 1}

end

# #March
# url =  "https://data.seattle.gov/resource/upms-nr8w.json?$where=date between '2019-01-01T00:00:00' and '2019-01-31T23:59:59'"


# response = RestClient.get(url)
# response_body = response.body
# json_response = JSON.parse(response_body)

# wsc_march = json_response.map do |trip| 
#   {date_time: trip["date"],
#   total_trips: trip["spokane_st_bridge_total"].to_i,
#   direction_1: trip["west"].to_i,
#   direction_2: trip["east"].to_i,
#   bike_trails_counters_id: 1,
#   location_id: 1}

# end