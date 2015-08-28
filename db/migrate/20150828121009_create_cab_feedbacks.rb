class CreateCabFeedbacks < ActiveRecord::Migration
  def change
    create_table :cab_feedbacks do |t|
      t.integer :cab_id
      t.integer :user_id
      t.text :feedback_message
      t.timestamps null: false
    end
  end
end
