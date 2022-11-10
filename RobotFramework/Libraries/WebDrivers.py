from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver

class WebDriverManager(object):

    __driver = None

    @classmethod
    def get_web_driver(cls, browser):
        if cls.__driver is None:
            if (browser.lower()) == "chrome":
                cls.__driver =  webdriver.Chrome("C:/bin/chromedriver.exe")

        return cls.__driver

class Web(object):
    _driver = None

    def __init__(self, browser):
        self._driver = WebDriverManager.get_web_driver(browser)
        self._wait = WebDriverWait(self._driver, 10)

    def get_web_element_by_xpath(self, xpath):
        return self._wait.until(EC.presence_of_element_located((By.XPATH, xpath)))

    def get_web_elements_by_xpath(self, xpath):
        return self._wait.until(EC.presence_of_all_elements_located((By.XPATH, xpath)))

    def open(self, path):
        self._driver.get(path)

    def close_all(self):
        self._driver.quit()

