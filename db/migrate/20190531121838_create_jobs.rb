class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.text :title
      t.date :post_date
      t.text :description
      t.text :level
      t.text :company_type
      t.integer :salary
      t.text :job_type
      t.date :close_date
      t.text :city
      t.integer :user_id

      t.timestamps
    end
  end
end
