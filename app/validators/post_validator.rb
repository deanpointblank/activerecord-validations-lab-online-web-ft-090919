class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.title == nil || record.title.match?(/(Won't Believe|Secret|Top [1234567890]|Guess)/)
            record.errors[:name] << "Not click baity enough!"
        end
    end
end