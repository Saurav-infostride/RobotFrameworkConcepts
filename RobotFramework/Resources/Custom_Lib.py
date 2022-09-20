import time

from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Firefox()


def get_current_time_as_string(self):
    localtime = time.localtime()
    formatted_time = time.strftime("%Y%m%d%H%M%S", localtime)
    return formatted_time

"""
def login_to_sauce_demo_website(self):
    
    self.driver.find_element(By.XPATH, "//input[@id='user-name']").send_keys('performance_glitch_user')
    self.driver.find_element(By.XPATH, "//input[@id='password']").send_keys('secret_sauce')
    self.driver.find_element(By.XPATH, "//input[@id='login-button']").click()

    
    return self
"""