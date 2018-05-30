class AddTopicToPosts < ActiveRecord::Migration
  def change
    #5 "Add" + [table whose id we want to add] + "To" + [table we want to add the foreign key to]
    add_column :posts, :topic_id, :integer

    add_index :posts, :topic_id
  end
end
