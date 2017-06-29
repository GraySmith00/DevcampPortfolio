class Blog < ApplicationRecord
  belongs_to :topic 
  
  enum status: { draft: 0, published: 1 }
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  validates_presence_of :title, :body
  
  def self.by_order_desc
    order("created_at DESC")
  end
end
