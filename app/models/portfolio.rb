class Portfolio < ApplicationRecord
  has_many :technologies
  # needed for accepting technology values in the portfolio form
  accepts_nested_attributes_for :technologies, 
          reject_if: lambda { |attrs| attrs['name'].blank? }
  
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader
  
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
  
  def self.by_position
    order("position ASC")
  end
  
end
