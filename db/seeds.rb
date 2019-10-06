# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..100).each do |number|
  Contact.create(content: 'test content ' + number.to_s,
                  name: 'test name ' + number.to_s,
                  ruby: 'test ruby ' + number.to_s,
                  phone_number: 0 + number.to_i,
                  email: 'test email ' + number.to_s,
                  age: 'test age ' + number.to_s,
                  blood: 'test blood ' + number.to_s,
                  gender: 'test gender ' + number.to_s,
                  payment: 0 + number.to_i,
                  contact: 'test contact ' + number.to_s,
                  confirm_email1: 'test confirm_email1 ' + number.to_s,
                  confirm_email2: 'test confirm_email2 ' + number.to_s
                  )
end

(1..100).each do |number|
  Inquiry.create(content: 'test content ' + number.to_s,
                  name: 'test name ' + number.to_s,
                  ruby: 'test ruby ' + number.to_s,
                  email: 'test email ' + number.to_s,
                  confirm_email1: 'test confirm_email1 ' + number.to_s,
                  confirm_email2: 'test confirm_email2 ' + number.to_s,
                  contact: 'test contact ' + number.to_s
                  )
end

