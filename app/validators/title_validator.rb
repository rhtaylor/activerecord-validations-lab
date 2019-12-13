class TitleValidator < ActiveModel::Validator 
    def validate(record) 
        
        unless record.try(:title) && record.title.match?(/Won\'t Believe | Secrete | Top | Guess/)
            record.errors.add(:title, "title must be sufficiently clickbait-y.")
            
        else true
            record.errors.clear
        end    
    end
end
