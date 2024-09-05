class CreateTerms < ActiveRecord::Migration[7.1]
  def change
    create_table :terms do |t|
      t.string :name
      t.text :description
      t.text :history
      t.text :other_info

      t.timestamps
    end
  end
end
