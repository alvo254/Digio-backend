class Tms < ActiveRecord::Migration[6.1]
  def change
    create_table :tms do |t|
      t.string :name
      t.string :speciality
      t.string :email
    end
  end
end
