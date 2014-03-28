class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.column :name, :string
    end
  end
end
