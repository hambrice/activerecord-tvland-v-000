require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :character

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.each do |c|
      binding.pry
      puts "#{c.name} - #{c.show.name}"
    end
  end
end
