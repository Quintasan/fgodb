# frozen_string_literal: true

Fgodb::App.controllers :pages do
  DB = {
    servants: [
      {
        name: "Arturia Pendragorn",
        class: "Saber",
        commandlist: ["B", "A", "B", "Q", "Q"]
      },
      {
        name: "Karna",
        class: "Lancer",
        commandlist: ["B", "A", "B", "Q", "Q"]
      }
    ]
  }.freeze

  get :home, map: "/" do
    render :index
  end

  get :test, map: "/test" do
    content_type :json
    logger.info "Hit from React"
    DB.to_json
  end
end
