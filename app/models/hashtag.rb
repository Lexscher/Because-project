class Hashtag < ApplicationRecord

    has_many :hash_posts
    has_many :posts, through: :hash_posts 

end