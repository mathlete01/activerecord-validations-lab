require 'pry'
class TitleValidator < ActiveModel::Validator
    def validate(record)
        #binding.pry
        # unless record.title != "nil"
        #     record.errors[:title] << "Post must have a title."
        # end

        snippets = ["Won't Believe", "Secret", "Top [number]", "Guess"]
        #binding.pry
        snippets.each do |s|
            unless record.title.include? s
                record.errors[:title] << "Not click-bait-y enough."
            end
        end
    end
end

# class TitleValidator < ActiveModel::EachValidator
#     def validate_each(record, attribute, value)
#         snippets = ["Won't Believe", "Secret", "Top [number]", "Guess"]
#         snippets.each do |s|
#             #puts "s = #{s}"
#             #binding.pry
#             unless value.include? s
#                 record.errors[attribute] << "Not click-bait-y enough."
#             end
#         end
#     end
# end

