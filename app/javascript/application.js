// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

import MenuCollapseController from "controllers/menu_collapse_controller";
Stimulus.register("menu-collapse", MenuCollapseController);

import SwapViewController from "controllers/swap_view_controller"
Stimulus.register("swap-view", SwapViewController);

import ToggleActiveClassController from "controllers/toggle_active_class_controller"
Stimulus.register("toggle-active-class", ToggleActiveClassController);

//= require rails_admin/rails_admin
