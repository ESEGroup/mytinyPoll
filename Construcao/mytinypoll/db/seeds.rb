# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!(name: "Administrador",
                email: "admin@admin.com",
                password: "admin123",
                password_confirmation: "admin123",
                cpf: "15434904761",
                fb_token: '0'
            )
            
admin.add_role :creator
admin.add_role :manager
