class ApplicationController < ActionController::Base
    before_action :set_schedule, only: [:show, :edit, :update, :destroy]
end
