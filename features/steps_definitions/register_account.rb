When('I create a user') do
  user_page.load
  @person = OpenStruct.new
  @person.name = Faker::Name.first_name
  @person.last_name = Faker::Name.last_name
  @person.email = Faker::Internet.free_email
  user_page.create_user(@person)
end
