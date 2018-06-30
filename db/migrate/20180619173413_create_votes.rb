class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
<<<<<<< HEAD
    add_index :votes, :user_id
    add_index :votes, :post_id
=======

>>>>>>> Rails_Favorites_checkpoint_38
  end
end

# add_index :ballots, :user_id
# or, if you want it indexed automatically:
#
# t.references :user, index: true
