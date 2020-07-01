class Hashtag < ApplicationRecord

    has_many :hash_posts
    has_many :posts, through: :hash_posts 


    # finds top tending hashtags 
    def self.trending
        @hashtags = Hashtag.all 
        sorted = @hashtags.sort_by{|hashtag| hashtag.posts.count}.reverse
        sorted[0...4]
    end
  
    validates :name, presence: :true

    # def priority_hastags
        
    # end
    


end
