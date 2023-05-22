class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      
      
       t.string :title
       t.text :opinion
       t.text :introduction

      t.timestamps
    end
  end
end
