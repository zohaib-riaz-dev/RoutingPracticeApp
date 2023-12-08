class CreateAds < ActiveRecord::Migration[7.1]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :content
      t.references :magazine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
