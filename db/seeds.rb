# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Bands
band_names = %w[Fundamentals_Mke Feral_Kid_Theory]
genres = %w[avant-guard jazz blues]

band_names.each do |name|
  Band.find_or_create_by!(name:, genre: genres.shuffle.pop)
end

# Musicians
%w[Matthew Mark Mary Ruth].each do |name|
  Musician.find_or_create_by(name:)
end
