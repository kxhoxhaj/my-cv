class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :cv ]

  def home
  end

  def cv
  end
end
