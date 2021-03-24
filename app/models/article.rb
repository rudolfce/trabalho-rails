class Article < ApplicationRecord
    belongs_to :author
    has_and_belongs_to_many :tags

    def tag_list
        tags.join(', ')
    end

    def tag_list=(tag_string)
        tag_names = tag_string.split(',').collect{|s| s.strip.downcase}.uniq
        new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
        self.tags = new_or_found_tags
    end
end
