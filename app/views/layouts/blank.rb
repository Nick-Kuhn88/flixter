class Image 

  def initialize(data)
    @information = data
  end

  def output_image

    @information.each do |x|

      print x.join("")
      print "\n"
    end
  end

  def blur_image

    @information.each_with_index do |row, y_index|

      row.each_with_index do |column, x_index|

        puts @information[y_index][x_index]
        puts "y: #{y_index}, x: #{x_index}"
      end 

      puts " "
    end 
  end

  def change_top(row, column)
    @information[row][column] == 1 
  end 

end 


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


image.blur_image