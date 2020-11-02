class Author < ActiveRecord::Base
    
    # Built-in validators
    validates :name, uniqueness: true
    validates :phone_number, presence: true, length: {is: 10}
    #validates :name, presence: true, uniqueness: true
    
    # Custom validator
    include ActiveModel::Validations
    validates_with NameValidator
end
