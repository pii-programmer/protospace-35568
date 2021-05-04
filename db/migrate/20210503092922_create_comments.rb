class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text,            null: false
      t.references :user,      foreighn_key: true
      t.references :prototype, foreighn_key: true
      t.timestamps
    end
  end
end
