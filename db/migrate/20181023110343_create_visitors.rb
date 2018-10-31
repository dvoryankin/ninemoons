class CreateVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :visitors do |t|
      t.string :ip
      t.string :user_agent
      t.string :start_url
      t.string :referrer
      t.string :visitor_id
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
