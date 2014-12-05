class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.belongs_to :comment
      t.belongs_to :user
      t.integer :value
    end
  end
end
