current_path = File.dirname(__FILE__)

lob = current_path + '/lob.txt'
eyes = current_path + '/eyes.txt'
nose = current_path + '/nose.txt'
rot = current_path + '/rot.txt'


if File.exist?(lob)

	file = File.new(lob)
	lob_lines = file.readlines
	file.close

else
	puts 'файл не найден'
end

if File.exist?(eyes)

	file = File.new(eyes)
	eyes_lines = file.readlines
	file.close

else
	puts 'файл не найден'
end

if File.exist?(nose)

	file = File.new(nose)
	nose_lines = file.readlines
	file.close

else
	puts 'файл не найден'
end

if File.exist?(rot)

	file = File.new(rot)
	rot_lines = file.readlines
	file.close

else
	puts 'файл не найден'
end




###### сохраняем рожици в файл
current_path = File.dirname(__FILE__)






time = Time.now

file_name = time.strftime("%Y-%m-%d")

time_string = time.strftime("%H:%M")



file = File.new(current_path + "/" + "face" + file_name + "_" + time_string + ".txt", "a:UTF-8")



file.puts(lob_lines.sample)
file.puts(eyes_lines.sample)
file.puts(nose_lines.sample)
file.puts(rot_lines.sample)

file.close

puts "Данние сохранени в файл face#{file_name}.txt"



