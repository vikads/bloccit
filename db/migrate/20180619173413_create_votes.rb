class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user
      t.references :post

      t.timestamps null: false
    end
    add_index :votes, :user_id
    add_index :votes, :post_id
  end
end

# add_index :ballots, :user_id
# or, if you want it indexed automatically:
#
# t.references :user, index: true
