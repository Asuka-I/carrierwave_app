class HomesController < ApplicationController
  def index
    @notes = Note.all
  end
end
