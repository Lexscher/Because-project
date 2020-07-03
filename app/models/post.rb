class Post < ApplicationRecord
    # relationships
    belongs_to :user
    belongs_to :emoticon
    has_many :comments
    has_many :replies, through: :comments 
    has_many :hash_posts
    has_many :hashtags, through: :hash_posts 

    # ActiveStorage
    has_one_attached :image 



    # validations
#     validates :content, presence: true 
#     validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}
#     validates :content, inclusion: { in: %w(because reason why), unless: -> { content.include?('?')}, message: "A post must contain either the word 'because', 'reason', or 'why'."
    
#     validates :image, presence: true
#     # must be created with emoticon_id, but FK acts as validation

    
#     validates :content, presence: true, if: :because?, unless: -> { content.include?('?')} 

    # validations
    validates :content, presence: true, if: :because?, unless: -> { content.include?('?')} 
    validates :content, length: { minimum: 250 , unless: -> { content.include?('?')}, message: "A post must contain at least 250 characters, or include a question mark."}
    
    # validates :image, presence: true
    # must be created with emoticon_id, but FK acts as validation
    
    

    
    



    def because?
        self.content.include?('because') || self.content.include?('reason') || self.content.include?('why') || self.content.include?("Because") || self.content.include?("Reason") || self.content.include?('Why')
    end
    # fix 
    def post_age
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        months = days/30
        weeks = days/7
        remaining_days = days%365
        if days > 365
            return "#"
        "This account is #{year} years and #{remaining_days} days old."
        end 
    end

    def user_name
        self.user.name 
    end

    def user_image
        self.user.image 
    end

    def emoticon_image
        self.emoticon.image 
    end

    # def home_user?
    #     self.user == current_user
    # end


end
