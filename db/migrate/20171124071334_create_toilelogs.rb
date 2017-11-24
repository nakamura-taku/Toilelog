class CreateToilelogs < ActiveRecord::Migration[5.1]
  def change
    create_table :toilelogs do |t|
      t.string :title
      t.string :kuchikomi

      t.timestamps
    end
  end
end
