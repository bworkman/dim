class AddUserIdAndCharacterIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user, forgein_key: true
    add_reference :items, :character, forgein_key: true
  end
end
