class Client < ActiveRecord::Base
  ROLES = [:guest,
           :journalist,
           :colleague]
  AGES = [:young,
          :adult,
          :old]
  validates :name, :email, :role, presence: true, length: { minimum: 2 }
  validates :age, presence: true, inclusion: { in: 1..99 }
end
