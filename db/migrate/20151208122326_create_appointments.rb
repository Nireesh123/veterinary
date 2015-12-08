class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :doctor, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true
      t.string :customer_name
      t.boolean :appointment_reminder
      t.text :reason_for_visit
      t.datetime :date_of_visit

      t.timestamps null: false
    end
  end
end
