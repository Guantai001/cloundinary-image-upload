class CreateAirbnbs < ActiveRecord::Migration[7.0]
  def change
    create_table :airbnbs do |t|
      t.string :image
      
      t.timestamps
    end
  end
end
