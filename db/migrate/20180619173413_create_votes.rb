class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end

  end
end

# add_index :ballots, :user_id
# or, if you want it indexed automatically:
#
# t.references :user, index: true
