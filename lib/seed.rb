class Seed

	def self.run
		puts "Seeding data into local database..."

		puts "Destroying Existing Data"
		House.destroy_all
		Book.destroy_all
		Character.destroy_all

		###### Load houses ######
		puts "Seeding Houses"
		count_two = 0
		while count_two < 443
			house_hash = GameOfThronesApi.get_houses[count_two]
			House.create({
				:name => house_hash["name"],
				:coat_of_arms => house_hash["coatOfArms"],
				:house_url => house_hash["url"]
			})
			count_two += 1
		end

		##### Load books #####
		puts "Seeding Books"
		count_three = 0
		while count_three < 11
			book_hash = GameOfThronesApi.get_books[count_three]
			Book.create({
				:name => book_hash["name"],
				:book_url => book_hash["url"]
			})
			count_three += 1
		end

		###### Load characters ######
		puts "Seeding Characters"
		count = 0
		while count < 2134
			character_hash = GameOfThronesApi.get_characters[count]

			book_url = character_hash["books"].first
			book = Book.find_by(book_url: book_url)

			house_url = character_hash["allegiances"].first
			house = House.find_by(house_url: house_url)

			Character.create({
				:name => character_hash["name"],
				:book => book,
				:house => house
			})
			count += 1
		end

	end

	def self.get_json(url)
    response = RestClient.get(url)
    json = JSON.parse(response.body)
  end
end
