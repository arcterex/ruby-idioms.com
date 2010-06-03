class CreateIdioms < ActiveRecord::Migration
  def self.up
    create_table :idioms do |t|
      t.integer :user_id
      t.text :idiom
      t.integer :category_id
      t.integer :status_id

      t.timestamps
    end
  end

  def self.down
    drop_table :idioms
  end
end
