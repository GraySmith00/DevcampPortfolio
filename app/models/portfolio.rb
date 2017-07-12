class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  # needed for accepting technology values in the portfolio form
  accepts_nested_attributes_for :technologies, 
          reject_if: lambda { |attrs| attrs['name'].blank? }
  
  validates_presence_of :title, :body
  
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
  
  def self.by_position
    order("position ASC")
  end
  
 
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
