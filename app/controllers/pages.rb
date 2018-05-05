# frozen_string_literal: true

Fgodb::App.controllers :pages do

  DB = {
    servants: [
      {
        name: "Arturia Pendragorn",
        class: "Saber",
      },
      {
        name: "Karna",
        class: "Lancer",
      }
    ]
  }

  get :home, map: "/" do
    render :index
  end

  get :test, map: "/test" do
    content_type :json
    logger.info "Hit from React"
    DB.to_json
  end
end
