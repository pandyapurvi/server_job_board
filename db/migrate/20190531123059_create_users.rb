class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.text :name
      t.integer :phone
      t.text :website
      t.boolean :employer
      t.text :company_size
      t.text :company_type
      t.text :description
      t.text :ABN
      t.text :image
      t.text :resume
      t.text :notice_period
      t.integer :experience
      t.text :current_title
      t.integer :application_id

      t.timestamps
    end
  end
end
