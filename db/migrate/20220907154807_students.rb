class Students < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grades
      t.string :email
    end
  end
end
