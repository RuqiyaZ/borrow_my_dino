class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dinosaur, null: false, foreign_key: true
      t.integer :date

      t.timestamps
    end
  end
end
