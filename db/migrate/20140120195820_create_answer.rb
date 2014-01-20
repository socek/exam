class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :right, :default => false
      t.belongs_to :question

      t.timestamps
    end
  end
end
