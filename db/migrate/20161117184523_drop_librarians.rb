class DropLibrarians < ActiveRecord::Migration[5.0]
    def change
        drop_table :librarians
    end
end
