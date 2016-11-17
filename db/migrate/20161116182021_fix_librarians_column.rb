class FixLibrariansColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :librarians, :hrs_worked, :string
  end
end
