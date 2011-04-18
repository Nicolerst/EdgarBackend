# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Client.create(:nom => "Chollier", :prenom => "Loic", :anniversaire => Date.parse("05-06-1990"), :telephone => "0634157087", :email => "loic@chollier.com", :adresse => "25 Les Jardins de Saint Benoit", :codepostal => 38200, :ville => "Vienne", :notes_memo => "Is awesome", :alias => "chollier",  :password => "aqwzsx123" )
Client.create(:nom => "Cumin", :prenom => "Nicolas", :anniversaire => Date.parse("20-08-1990"), :telephone => "0617494905", :email => "ncumin@gmail.com", :adresse => "Boulevard XXX XXXX XXXX XXXX XX", :codepostal => 38200, :ville => "Vienne", :notes_memo => "Is awesome too", :alias => "cumin", :password => "random" )
