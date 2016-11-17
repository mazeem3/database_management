class AddPubIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :pub_id, :integer
  end
end
