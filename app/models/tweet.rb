class Tweet
  include Mongoid::Document

  scope :query, lambda { |query|
    regexps = query.split(/\s/).map { |word| Regexp.new(word, Regexp::IGNORECASE) }
    all_in(:text => regexps)
  }
end
