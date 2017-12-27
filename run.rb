require './odin_mailer.rb'

user = {
  name: 'Paul',
  email: 'paul@qcx.com.br'
}

# data = {
#   parser: {
#     name: 'John',
#     plan: 'Advanced',
#     expiration_date: '2018-01-01'
#   }
# }
#
# OdinMailer.deliver!('welcome', user, data)


data = {
  parser: {
    email: 'joe@foo.bar',
    name: 'Joe foo',
    company: 'A random Company',
    identifier: 'conversion_identifier_001'
  }
}

OdinMailer.send('expiring-account', user, data)
