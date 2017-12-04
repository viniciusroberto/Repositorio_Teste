
require "appium_lib"
require "pry"

def caps

    { caps: {
        deviceName: "Anyname",
        platformName: "Android", #, app: (File.join(File.dirname(__FILE__), "bradesco-3-1-3.apk")),
        appPackage: "com.android.browser",
        appActivity: "com.android.browser.BrowserActivity",
        newCommandTimeout: "3600"
    }}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
@selenium_driver = @appium_driver.start_driver

@selenium_driver.get("https://minhaclaroescondida.claro.com.br")
find_element(id: "E-Mail").send_keys('teste.nov2016@gmail.com')



# def find_in_list(value)
#   3.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y: 0.8, duration:600).perform }
#
#   current_screen = get_source
#   previous_screen = ""
#
#   until (exists{ text(value) }) || (current_screen == previous_screen) do
#     Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.4, duration:1000).perform
#     previous_screen = current_screen
#     current_screen = get_source
#   end
#
#   if exists{ text(value) }
#     text(value).click
#   else
#     fail("Cannot find element with text #{value}")
#   end

#end
