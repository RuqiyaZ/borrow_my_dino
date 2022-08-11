class AddBioToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :bio, :text
  end
end
