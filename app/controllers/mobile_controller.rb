class MobileController < ApplicationController
  before_action :custom_action_name, only: [
      :starvation,
      :odessa_1917_1941,
      :old_odessa,
      :step_ukr,
      :showroom,
      :weapons,
      :wwii
  ]

  def index
  end

  def contact
  end

  def history
  end

  def excursion
  end

  def branches
  end

  def expositions
  end

  def price
    @tickets = Ticket.all
  end

  def subscribe
    @client = Client.new
  end

  def starvation
  end

  def odessa_1917_1941
  end

  def old_odessa
  end

  def step_ukr
  end

  def showroom
  end

  def weapons
  end

  def wwii
  end

  def custom_action_name
    @expo = :expositions
  end
end
