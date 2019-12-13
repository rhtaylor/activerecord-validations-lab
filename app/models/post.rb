class Post < ActiveRecord::Base 
    include ActiveModel::Validations
    validates :title, presence: true,  uniqueness: true, title: true 
    validates_with TitleValidator 

   
    
    validates :content, presence: true, length: {minimum: 10} 
    validates :content, length: {maximum: 300} 
    validates :summary, length: {maximum: 60} 
    validates :category, inclusion: { in: %w(Fiction), 
    message: "%{value} is not a valid category" }
   
end
