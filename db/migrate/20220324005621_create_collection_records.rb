class CreateCollectionRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :collection_records do |t|
      t.belongs_to :collection, null: false
      t.belongs_to :record, null: false

      t.timestamps
    end

    create_table :records do |t|
      t.belongs_to :user, null: false

      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
