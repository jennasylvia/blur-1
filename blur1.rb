# Image class
class Image
#    attr_accessor :rank, :suit
    
    def initialize(image_array)
        if image_array.empty?
            puts "Your image is empty"
        end
        @image_array = image_array
    end
    
    def output_image
        @image_array.each do |element|      # print by element vs joined elements
            element.each do |sub_element|
                print sub_element           # keep elements in each row together
            end
            puts
#        @image_to_output = []
#        @image_array.each do |sub_array|
#            puts sub_array.join                 # more efficient than 2 loops
#           @image_to_output << sub_array.join
        end
#        @image_to_output.each do |joined_array|
#            puts joined_array
#        end
    end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
