module PortfoliosHelper
  
  
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end
  
  def portfolio_img(img, type)
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '225', width: '225')
    elsif type == 'main'
      image_generator(height: '400', width: '600')
    end
  end
  
  
  
  
end
