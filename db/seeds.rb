5.times { |n| Channel.create!(name: "Channel #{n}") }
puts "5 Channels Created.."

10.times do |n| 
  Show.create!( name: "show #{n}", 
                channel: Channel.find(rand(1..5)), 
                timing: Time.new.strftime("%I:%M %p"))
end


puts "10 Shows Created"
