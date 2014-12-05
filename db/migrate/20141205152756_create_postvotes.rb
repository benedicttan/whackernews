class CreatePostvotes < ActiveRecord::Migration
  def change
    create_table :postvotes do |t|
      t.belongs_to :post
      t.belongs_to :user
      t.integer :value
    end
  end
end
