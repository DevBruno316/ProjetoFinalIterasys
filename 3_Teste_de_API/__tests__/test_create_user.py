import pytest
import requests
import json
import time

userName = "jehjennifer20"
password = "Narutin123@"
userId = ''
url="https://bookstore.toolsqa.com/"

headers={'Content-Type': 'application/json', 'Authorization':'bruno123'}





def test_post_user():
    global userId
    user = open("3_Teste_de_API/fixtures/json/user1.json")
    data = json.loads(user.read())

    response = requests.post(
        url=f'{url}Account/v1/User',
        headers=headers,
        data=json.dumps(data)
    )

    response_body = response.json()

    assert response.status_code == 201
    assert response_body['username'] == userName
    userId =  response_body['userID']
    

def test_post_generateToken():
    user = open('3_Teste_de_API/fixtures/json/user1.json')
    data = json.loads(user.read())

    response = requests.post(
        url=f'{url}Account/v1/GenerateToken',
        headers=headers,
        data=json.dumps(data)
    )

    response_body = response.json()


    assert response.status_code == 200
    assert response_body['status'] == "Success"
    assert response_body['result'] == "User authorized successfully."

def test_post_authorized():
    user = open('3_Teste_de_API/fixtures/json/user1.json')
    data = json.loads(user.read())

    response = requests.post(
        url=f'{url}Account/v1/Authorized',
        headers=headers,
        data=json.dumps(data)
    )

    response_body = response.json()

    assert response.status_code == 200
    assert response_body == True


def test_post_createBook():
    global userId
    books = {}
    books['userId'] = userId
    books['collectionOfIsbns'] = []
    isbnField = {}
    isbnField['isbn'] = '551846576652'
    books['collectionOfIsbns'].append(isbnField)
    books = json.dumps(obj=books, indent=4)
    print('\n' + books)

    response = requests.post(
        url=f'{url}BookStore/v1/Books',
        headers=headers,
        data=books
    )

    response_body = response.json()

    assert response.status_code == 201
    assert response_body['isbn'] == '551846576652'
    


