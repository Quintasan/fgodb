# frozen_string_literal: true

Fgodb::App.controllers :pages do
  get :home, map: "/" do
    render :index
  end
end
