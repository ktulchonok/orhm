class PagesController < ApplicationController
  before_action :set_locale, :check_for_mobile
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
    @posts = Post.order(created_at: :desc).first(5)
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

  def services
  end

  def partners
  end

  def how
  end

  def tenders
  end

  def contacts
  end

  def online
  end

  def virtual_tour
  end

  def workshop
  end

  def custom_action_name
    @expo = :expositions
  end
end
