# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  

   VisaInfo.create(visa_info: 'Hello hello world', links: 'tt.com', source: Country.find_by(id: 2), destination: Country.find_by(id: 3), nationality: Country.find_by(id: 4), visit_purpose: VisitPurpose.find_by(id: 1))


  