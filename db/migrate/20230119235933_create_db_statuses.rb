class CreateDbStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :db_statuses do |t|

      t.timestamps
    end
  end
end
