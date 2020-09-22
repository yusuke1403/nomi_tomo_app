class CreateIzakayas < ActiveRecord::Migration[6.0]
  def change
    create_table :izakayas do |t|
      t.string :name
      t.string :tel
      t.string :address

      t.timestamps
    end
  end
end
