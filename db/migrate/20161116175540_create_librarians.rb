class CreateLibrarians < ActiveRecord::Migration[5.0]
  def change
    create_table :librarians do |t|
      t.integer :emp_id
      t.integer :hrs_wored

      t.timestamps
    end
  end
end
