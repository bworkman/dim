class AddUserIdColumnToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :user, forgein_key: true
  end
end
