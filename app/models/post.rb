# Passes all tests except for ' is invalid if not clickbait '
class Post < ActiveRecord::Base

    # Built-in Validators
    #validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    # Custom Validator
    include ActiveModel::Validations
    #validates_with TitleValidator
    validates :title, presence: true, title: true
end

# class Post
#     # Custom Validator
#     include ActiveModel::Validations
#     validates_with TitleValidator
#     #validates :title, presence: true, title: true
# end
