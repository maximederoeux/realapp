class CreateReals < ActiveRecord::Migration
  def change
    create_table :reals do |t|

      t.timestamps
    end
  end
end
