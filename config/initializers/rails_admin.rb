RailsAdmin.config do |config|
  # Use importmap as the asset source
  config.asset_source = :importmap

  # Authentication with Devise
  config.authenticate_with do
    warden.authenticate!(scope: :user)
  end
  config.current_user_method(&:current_user)

  # Authorization: Only allow admins to access RailsAdmin
  config.authorize_with do
    redirect_to main_app.root_path unless current_user&.admin?
  end

  ### Popular gems integration (Optional configurations, uncomment if needed)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # Uncomment if using PaperTrail

  ### Gravatar integration in the Navigation Bar
  # config.show_gravatar = true # Uncomment if you want Gravatar

  ### RailsAdmin Actions
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

    ## Uncomment these if using an audit adapter:
    # history_index
    # history_show
  end
end
