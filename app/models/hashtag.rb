class Hashtag < ApplicationRecord
    # relationships
    has_many :hash_posts
    has_many :posts, through: :hash_posts 

    # validations
    validates :name, presence: :true, format: { without: /\s/ } #, inclusion: { in: %w(#), message: "must start with # and have no spaces"}


    # finds top tending hashtags 
    def self.trending
        @hashtags = Hashtag.all 
        sorted = @hashtags.sort_by{|hashtag| hashtag.posts.count}.reverse
        sorted[0...4]
    end

end
