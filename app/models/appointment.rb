class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :pet

  validates :date_of_visit, :customer_name, :reason_for_visit, presence: true
  validate :date_cannot_be_in_the_past


  def date_cannot_be_in_the_past
    if date_of_visit.present? and date_of_visit < Date.today
      errors.add(:date_of_visit, "can't be in the past")
    end
  end

end
