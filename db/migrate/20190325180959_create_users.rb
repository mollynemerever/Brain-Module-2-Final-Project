class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo_url
      t.string :city
      t.string :email
      t.string :professional_industry
      t.string :about_me
      t.timestamps
    end
  end
end
