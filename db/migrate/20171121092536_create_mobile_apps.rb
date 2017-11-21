class CreateMobileApps < ActiveRecord::Migration[5.1]
  def change
    create_table :mobile_apps do |t|
      t.string :name
      t.string :store_ids

      t.timestamps
    end
  end
end
