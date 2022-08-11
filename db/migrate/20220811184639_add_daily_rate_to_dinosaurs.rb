class AddDailyRateToDinosaurs < ActiveRecord::Migration[7.0]
  def change
    add_column :dinosaurs, :daily_rate, :integer
  end
end
