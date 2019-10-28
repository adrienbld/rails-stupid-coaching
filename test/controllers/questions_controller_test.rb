# require 'test_helper'

# class QuestionsControllerTest < ActionDispatch::IntegrationTest
#   test "should get ask" do
#     get questions_ask_url
#     assert_response :success
#   end

#   test "should get answer" do
#     get questions_answer_url
#     assert_response :success
#   end

# end

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  Capybara.register_driver(:headless_chrome) do |app|
    capabilities = Selenium::WebDriver::Remote::Capabilities.chrome \
      chromeOptions: { args: %w[headless disable-gpu window-size=1280x760] }
    Capybara::Selenium::Driver.new app,
      browser: :chrome, desired_capabilities: capabilities
  end
  driven_by :headless_chrome
end
