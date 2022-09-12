class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
    @mechanics_average_age = Mechanic.average_exp
  end
end
