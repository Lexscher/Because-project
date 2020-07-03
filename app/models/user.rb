class User < ApplicationRecord
    # relationships
    has_many :followed_users, foreign_key: :follower_id, class_name:'Follow'
    has_many :followees, through:  :followed_users
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    has_many :posts
    has_many :hash_posts, through: :posts
    has_many :hashtags, through: :hash_posts #, source:
    has_many :comments, through: :posts
    has_many :replies, through: :comments

    # ActiveStorage 
    has_one_attached :image 

    # validations
    validates :username, presence: true, uniqueness: {case_sensitive: true, message: "username must be unique, this one is taken." }
    validates :name, presence: true
    # validates :image, presence: true
    
    has_secure_password

    # calculates the account age of the user
    def account_age
        # gives the date account was created
            # created = @user.created_at.strftime("%m/%d/%y").split("/").map(&:to_i)
            # today = Date.today.strftime("%m/%d/%y").split("/").map(&:to_i)
            # created_array= []
            # month = today[0] - created[0]
            # day = today[1] - created[1]
            # year = today[2] - created[2]
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        remaining_days = days%365
        "This account is #{year} years and #{remaining_days} days old."
    end

    # displays the users most used hashtags on users/show
    def most_used_hashtags
        # my_tags = self.hashtags.each do |hashtag|
        #     hashtag.posts.select do |post|
        #         post.user_id == self 
        #     end
        # end 
        my_tags = []
        self.posts.each do |post|
            my_tags << post.hashtags
        end
        flattened = my_tags.flatten
        tallied = Hash[flattened.group_by{|x|x}.map{|x,y|[x,y.size]}]
        # sorted.each do |hashtag|
        #     # need to associate hashtag w it's count
            
        #     # gives number of times hashtag appears in sorted list
        #     sorted.find_all[hashtag].count 
        # end
        tallies_sorted = tallied.sort_by{|x,y| y}.reverse
        my_most = tallies_sorted[0..4]
        most_used = my_most.map do |array|
            array[0]
        end
        most_used
    end

    def posts_in_order
        posts.sort_by(&:created_at).reverse
    end

    def all_followees_posts 
        all_followee_posts = []
        self.followees.each do |followee|
            followee.posts.each do |post|
                all_followee_posts << post 
            end
        end
        all_followee_posts  
    end

    def feed 
        all_followee_posts.sort_by(&:created_at).reverse
    end

    def capitalize_profile_name(name)
        name.split(" ").map(&:capitalize).join(" ")
    end
end
