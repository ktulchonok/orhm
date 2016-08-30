class Client < ActiveRecord::Base
  # TODO: make roles for clients
  ROLES = [['Посетитель', :guest],
           ['Журналист', :journalist],
           ['Коллега по культуре', :col]]

end
