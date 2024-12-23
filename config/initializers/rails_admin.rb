RailsAdmin.config do |config|
  config.asset_source = :importmap # Use the default asset source

  config.authenticate_with do
    warden.authenticate!(scope: :user)
  end
  config.current_user_method(&:current_user)

  # Comment or remove the authorize_with block
  # config.authorize_with do
  #   redirect_to main_app.root_path unless current_user&.admin?
  # end
  config.asset_source = :sprockets

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
