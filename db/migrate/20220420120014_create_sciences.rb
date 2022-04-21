class CreateSciences < ActiveRecord::Migration[7.0]
  def change
    create_table :sciences do |t|

      t.timestamps
    end
  end
end
