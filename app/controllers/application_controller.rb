class ApplicationController < ActionController::Base
  def hello
    render html: "hell, word!"
  end
end
