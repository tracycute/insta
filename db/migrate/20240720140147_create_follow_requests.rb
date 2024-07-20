class CreateFollowRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :follow_requests do |t|
      t.integer :follower_id
      t.integer :followable_id
      t.string :followable_type

      t.timestamps
    end
  end
end
