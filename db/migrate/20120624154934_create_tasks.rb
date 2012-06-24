class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.datetime :DateRequired
      t.string :Title
      t.float :Days
      t.text :Notes
      t.string :Assigned
      t.string :Type
      t.string :Team

      t.timestamps
    end
  end
end
