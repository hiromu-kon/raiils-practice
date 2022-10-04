class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action do
    I18n.locale = :ja
  end
end
