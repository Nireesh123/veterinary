json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :doctor_id, :pet_id, :customer_name, :appointment_reminder, :reason_for_visit, :date_of_visit
  json.url appointment_url(appointment, format: :json)
end
