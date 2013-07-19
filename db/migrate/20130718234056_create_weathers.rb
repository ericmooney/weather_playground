class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.string :date
      t.float :min_temp
      t.float :max_temp

      t.timestamps
    end
  end
end
