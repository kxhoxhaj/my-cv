# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w(bootstrap.min.js popper.js)
Rails.application.config.assets.paths << Rails.root.join("node_modules/@fortawesome/fontawesome-free/webfonts")
Rails.application.config.assets.precompile += %w[*.svg *.eot *.woff *.woff2 *.ttf]
Rails.application.config.assets.precompile += %w[rails_admin/rails_admin.css rails_admin/rails_admin.js]
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'stylesheets')
Rails.application.config.assets.precompile += %w[rails_admin.scss rails_admin.js]
