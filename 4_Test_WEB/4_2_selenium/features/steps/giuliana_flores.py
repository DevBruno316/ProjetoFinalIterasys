from behave import given,when,then
import selenium
from selenium import webdriver
from selenium.webdriver.common.by import By


@given(u'que acesso o site Giuliana Flores')
def step_impl(context):
    context.driver = webdriver.Chrome()
    context.driver.implicitly_wait(10)
    context.driver.get('https://www.giulianaflores.com.br/')

@when(u'clico na barra de pesquisa e preencho com {search}')
def step_impl(context,search):
    context.driver.find_element(By.ID, "txtDsKeyWord").send_keys(search)
    context.driver.find_element(By.ID, "btnSearch").click()



@then(u'fecho aba CEP e sou direcionado para pagina de produtos')
def step_impl(context):
    context.driver.find_element(By.CSS_SELECTOR, "div.close-button").click()
    context.driver.find_element(By.CSS_SELECTOR, "h2.title-item").text == "Luxuosas Astromélias Coloridas no Vaso"
    


@then(u'checo se o nome do produto é {name} e o preço é {price}')
def step_impl(context,name,price):
    context.driver.find_element(By.CSS_SELECTOR, "h2.title-item").text == name
    context.driver.find_element(By.CSS_SELECTOR, "span.actual-price").text == price


@then(u'clico no produto {name}')
def step_impl(context,name):
    context.driver.find_element(By.CSS_SELECTOR, "h2.title-item").text == name
    context.driver.find_element(By.CSS_SELECTOR, "h2.title-item").click()



@then(u'sou direcionado para pagina de carrinho e checo titulo {name} e valor {value}')
def step_impl(context,name,value):
    context.driver.find_element(By.ID, "ContentSite_lblProductDsName").text == name.upper()
    context.driver.find_element(By.CSS_SELECTOR, "div.preco_prod span.precoPor_prod").text == value


    