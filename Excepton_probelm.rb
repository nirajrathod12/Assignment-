
def read_numbers_from_file(file_path)
  arr = []
  begin
    file = File.open(file_path,'r')
       file.each do |line|
         number = Integer(line)
          arr << number
        rescue ArgumentError
          print"invalid data in the file #{line} \n" 
    end
  rescue Errno::ENOENT 
    puts "file is not found" 
  rescue Errno::EACCES
    puts "permision denied"
  end
  arr
end

def calculate_sum(number)
 number.sum
end

file_path = "m1.rb"

# File.chmod(000,file_path)

number = read_numbers_from_file(file_path)
if(number.any?)
  sum = calculate_sum(number)
  puts"number of sum :#{sum}"
else
  puts "invalid number"
end
