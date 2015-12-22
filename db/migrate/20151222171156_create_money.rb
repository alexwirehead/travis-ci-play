class CreateMoney < ActiveRecord::Migration
  def change
    create_table :money do |t|
      t.decimal :balance
      t.string :name

      t.timestamps null: false
    end
  end
end
