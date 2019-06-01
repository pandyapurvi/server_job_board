class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :job_id
      t.date :application_date
      t.text :resume
      t.text :cover_letter

      t.timestamps
    end
  end
end
