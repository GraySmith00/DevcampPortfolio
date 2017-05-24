class Portfolio < ApplicationRecord
  
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  #scope :angular ~> { where(subtitle: 'Angular') }
  def self.angular
    where(subtitle: "Angular")
  end
  
  #scope :ruby_on_rails, ~> { where(subtitle: 'Ruby on Rails') }
  def self.ruby_on_rails
    where(subtitle: "Ruby on Rails")
  end
  
  
  
end
