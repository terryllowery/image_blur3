# Steps to solve image blur
# get user input as array
# make a copy of the array and use second array as output array
# loop through each row and get length
# loop through first row and count how many columns
# loop through each row and create a new temp array storing the value of the row
# loop through each value and check the value
# if the value is 1 then figure row and column location
# if column is > 0 write 1 to same row and minus 1 column till you hit the max distance
# if row is > 0  write 1 to upper row in same column till you hit the max distance
# if row is < last row write 1 to row bellow it in same column till you hit the max distance
# if column is < last column write 1 to same row and +1 column till you hit the max distance

class Image
	attr_accessor :data

	def initialize(data)
		@data = data
	end

	def make_copy(input_arry)
		return array_copy = Marshal.load(Marshal.dump(self.data))
	end

	def row_column_count(array)
		#returns number of rows and columns in array
		rows = 0
		columns = 0

		array.each_index do
			rows += 1
		end
		array[0].each_index do
			columns += 1
		end

		return [rows][columns]

	end

	def blur(distance)

		row_column_count = row_column_count(@data)
		output = make_copy(@data)





		return @data
	end
end
