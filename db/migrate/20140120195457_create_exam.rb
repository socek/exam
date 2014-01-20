class CreateExam < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.text :title

      t.timestamps
    end
  end
end
