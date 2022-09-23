from SeleniumLibrary.base import LibraryComponent
from SeleniumLibrary.keywords import WebDriverCreator
from SeleniumLibrary.locators import WindowManager
from robot.api.deco import keyword
from selenium.webdriver.common.by import By


class ElementKeywords(LibraryComponent):
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def __init__(self, ctx):
        LibraryComponent.__init__(self, ctx)
        self._window_manager = WindowManager(ctx)
        self._webdriver_creator = WebDriverCreator(self.log_dir)

    @keyword(name='User Loginc 2')
    def login_to_sauce_demo_website(self):
        self.driver.find_element(By.XPATH, "//input[@id='user-name']").send_keys('performance_glitch_user')
        self.driver.find_element(By.XPATH, "//input[@id='password']").send_keys('secret_sauce')
        self.driver.find_element(By.XPATH, "//input[@id='login-button']").click()
