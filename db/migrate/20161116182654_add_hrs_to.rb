class AddHrsTo < ActiveRecord::Migration[5.0]
  def change
    add_column :librarians, :hrs_worked, :integer

  end
end
