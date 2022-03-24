class CreateCollections < ActiveRecord::Migration[7.0]
  def change
    create_table :collections do |t|
      t.timestamps

      t.belongs_to :user
      t.string :name
    end
  end
end
