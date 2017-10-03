# interface
# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

puts "What would you like to do?"
puts "1) List" 
puts "2) Add A Song"
puts "3) Update A Song"
puts "4) Remove A Song"
puts "5) Quit"

# Your Code begins from this line onwards #


 Song.all.each_with_index do |x,index|
         x.update(id: index+1)
      end

playlist = gets.chomp

if playlist == "2"
	loop do
	puts "What is the song Title?"
	play1 = gets.chomp

	puts "Who is the Artist?"
	play2 = gets.chomp

	puts "What is the Song Duration?"
	play3 = gets.chomp

	Song.create(song_title: play1, artist: play2, song_duration: play3)


	puts "Type Y to continue adding songs, Type Q to quit"
	play4 = gets.chomp

   break if play4 == "Q" || play4 != "Y"
   end


	elsif playlist == "1"
		Song.all.each_with_index do |s, index|
 		puts "#{index+1}). song_title: #{s.song_title}, artist: #{s.artist}, song_duration: #{s.song_duration}" 
		end
	
	elsif playlist == "3"
		
		
	loop do	
    puts "Which song number do you want to update? (just type the number)"

    song_update = gets.chomp
	
    a = Song.find_by(id: song_update)

    

	    #p a;
	    p a.song_title,  a.artist, a.song_duration
 
		puts "The song title is " + a.song_title + ", " + a.artist + " and Song Duration is " + a.song_duration
	    puts "What do you want to update? (type the number will do)"
	    puts "1) Song title"
	    puts "2) Artist"

	    update_detail = gets.chomp

	    if update_detail == "1"
	    	puts "What is the song title?"
	    	title_update = gets.chomp
	    	a.song_title = title_update
	    	a.save
	    	puts "Do you want to continue updating the other details? (type Y if yes, type Q to quit back to song list)"
	    	reply = gets.chomp

	    elsif update_detail == "2"
	    	puts "What is the artist name?"
	    	artist_update = gets.chomp
	    	a.artist = artist_update
	    	a.save
	    	puts "Do you want to continue updating the other details? (type Y if yes, type Q to quit back to song list)"
	    	reply = gets.chomp
        end

     break if reply == "Q" || reply != "Y"
     end


 	elsif playlist == "4"

	loop do
		puts "Which song number would you like to delete?"

		song_del = gets.chomp

		a = Song.find_by(id: song_del)

		if a != nil

			Song.delete(song_del)

			puts "Do you want to continue deleting the other details? (type y if yes, type Q to quit back to song list)"
			reply = gets.chomp

		else puts "Song number " + song_del + " is not found. Are you sure that this is the right song number?"
		     puts "Do you want to continue deleting the other details? (type Y if yes, type Q to quit back to song list)"
		
	    end

    break if reply == "Q" || reply != "Y"
    end
	

end	
	








