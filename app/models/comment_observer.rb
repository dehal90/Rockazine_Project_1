class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    puts " Thank You"
  end
end