class RenameTypeColumnToCharacterType < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :type, :character_type
  end
end
