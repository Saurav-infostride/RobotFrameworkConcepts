from SeleniumLibrary.base import LibraryComponent
from robot.api.deco import keyword
from selenium.webdriver.common.by import By


class ElementKeywords(LibraryComponent):
    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    @keyword(name='User Login')
    def login_to_sauce_demo_website(self):
        self.driver.find_element(By.XPATH, "//input[@id='user-name']").send_keys('performance_glitch_user')
        self.driver.find_element(By.XPATH, "//input[@id='password']").send_keys('secret_sauce')
        self.driver.find_element(By.XPATH, "//input[@id='login-button']").click()
