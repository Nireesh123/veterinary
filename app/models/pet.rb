class Pet < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, :through => :appointments

  validates :name, :type_of_pet, :breed, :age, :weight, presence: true
  validates :name, :breed, length: {maximum: 35}
  validates :type_of_pet, inclusion: { in: %w(Dog Cat Bird dog cat bird),
                                          message: "%{value} is not a valid only Dog/Cat/Bird is a valid option" }
end
