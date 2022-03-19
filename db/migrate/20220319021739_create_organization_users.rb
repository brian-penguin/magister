class CreateOrganizationUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :organization_users do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :organization
    end
  end
end
