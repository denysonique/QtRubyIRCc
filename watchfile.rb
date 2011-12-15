watch('(.*)\.ui') do |filename|
  puts "processing #{filename}"
  %x[rbuic4 #{filename} -o #{filename[0][0..-4]}_ui.rb]
end
