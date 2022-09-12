class Mechanic < ApplicationRecord

  def average_exp
    average(:years_experience)
  end
end
