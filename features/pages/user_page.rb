# Classe para mapear os elementos da pagina home
class UserPage < SitePrism::Page

  set_url ''
  element :name, '#firstName1'
  element :last_name, '#lastName'
  element :email, '#username'

  def create_user(person)
    name.set person.name
    last_name.set person.last_name
    email.set person.email
  end
end