class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  #scope :angular ~> { where(subtitle: 'Angular') }
  def self.angular
    where(subtitle: "Angular")
  end
  
  #scope :ruby_on_rails, ~> { where(subtitle: 'Ruby on Rails') }
  def self.ruby_on_rails
    where(subtitle: "Ruby on Rails")
  end
  
  after_initialize :set_defaults
  
  def set_defaults
    #self.main_image ||= "http://placehold.it/600x400"
    if self.main_image == nil
      self.main_image = Placeholder.image_generator(height: '400', width: '600')
    end
    #self.thumb_image ||= "http://placehold.it/350x200"
    if self.thumb_image == nil
      self.thumb_image = Placeholder.image_generator(height: '350', width: '200')
    end
  end
  
end
