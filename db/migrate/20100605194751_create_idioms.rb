class CreateIdioms < ActiveRecord::Migration
  def self.up
    create_table :idioms do |t|
      t.text :idiom
      t.references :user
      t.references :category

      t.timestamps
    end
  end

  def self.down
    drop_table :idioms
  end
end
