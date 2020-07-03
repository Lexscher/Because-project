class Reply < ApplicationRecord
    belongs_to :comment
    belongs_to :post
    belongs_to :user

 
    validates :content, presence: true, if: :because?, unless -> { content.include?('?')}
    validates :content, length: { minimum: 250, message: "A post must contain at least 250 characters, or include a question mark." }, unless: -> { content.include?('?')}

     def because?

        self.content.include?('because') || self.content.include?('reason') || self.content.include?('why') || self.content.include?("Because") || self.content.include?("Reason") || self.content.include?('Why')
    end

    def reply_age
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        months = days/30
        weeks = days/7
        remaining_days = days%365
        if days/365 > 1
            return "#{year.to_i} years old"
        elsif days/30 > 1
            return "#{moths.to_i} months old"
        elsif days/7 > 1
            return "#{weeks.to_i} weeks old"
        else
            return "#{days} days old"
        end
    end

    def user_name
        self.user.name 
    end

    def user_image
        self.user.image 
    end


    
end
