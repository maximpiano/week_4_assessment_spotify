# 
# songs 

class Song < ActiveRecord::Base
	def 


	end

end


#in IRB
#### class methods
# Song.all    (show all the song in the table)
# Song.count  (count how many songs in the table)
# Song.first  (shows the first songs in the table)
# Song.create(column_name: value_1, column_name_2: value_2)
# (is the shortcut version of .new & .save)
# Song.find(2)
# Song.find_by(song_title: "mirrors") # one result
# Song.where(artist: "justin") # all matching results
# Song.where(artist: 'justin').each_with_index do |x, index|
# puts "#{index + 1} #{x.song_title}"
# end

#### instance methods
# x = Song.first
# => #<Song id=.....>

# x.update(column_name: value_1, column_name2: value_2) 

# x.save   (save it after inputing and editing)
# x.<column_name>
# x.<column_name> = some value
# x.destroy

