class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.belongs_to :quiz

      t.timestamps
    end
  end
end
