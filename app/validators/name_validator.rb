require 'pry'

class NameValidator < ActiveModel::Validator
    def validate(record)
        #binding.pry
        unless record.name != nil
            record.errors[:name] << "Author must have a name."
        end
        # unless record.name != nil
        #     record.errors[:name] << "Author must have a name."
        # end
    end
end