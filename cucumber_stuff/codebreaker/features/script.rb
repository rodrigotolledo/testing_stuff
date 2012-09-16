# Goals
# 1) Find slowest scenarios;
# 2) Find bigger scenarios;
# 3) Find optimized scenarios for specific period of time.

def open_file_and_read(file)
	counter = 1
	begin
		file = File.new(file_to_open, "r")
		while (line = file.gets)
			puts "#{counter}: #{line}"
			counter = counter + 1
		end
		file.close
	rescue => err
		puts "Exception: #{err}"
		err
	end
end

file = ARGV[0]
open_file_and_read(file)
