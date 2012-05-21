class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :published_at
      t.text :text

      t.timestamps
    end
  end
end
