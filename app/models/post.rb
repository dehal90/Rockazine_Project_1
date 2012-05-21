class Post < ActiveRecord::Base
has_many :comments
end
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end
