import pytest
import requests
import json

userName = "jehjennifer39"
password = "Narutin123@"
url = "https://bookstore.toolsqa.com/"

headers = {'Content-Type': 'application/json'}
userId = ''
isbn = '9781449325862'

def test_post_user():
    global userId
    with open("3_Teste_de_API/fixtures/json/user1.json") as user_file:
        data = json.load(user_file)

    response = requests.post(
        url=f'{url}Account/v1/User',
        headers=headers,
        data=json.dumps(data)
    )

    response_body = response.json()

    assert response.status_code == 201
    assert response_body['username'] == userName
    userId = response_body['userID']

@pytest.fixture(scope="session")
def token():
    with open("3_Teste_de_API/fixtures/json/user1.json") as user_file:
        user_data = json.load(user_file)
    
    response = requests.post(
        url=f'{url}Account/v1/GenerateToken',
        headers=headers,
        data=json.dumps(user_data)
    )
    response_body = response.json()

    assert response.status_code == 200
    assert response_body['status'] == "Success"
    assert response_body['result'] == "User authorized successfully."
    return response_body['token']

def test_token(token):
    assert token is not None

def test_post_authorized():
    with open('3_Teste_de_API/fixtures/json/user1.json') as user_file:
        user_data = json.load(user_file)

    response = requests.post(
        url=f'{url}Account/v1/Authorized',
        headers=headers,
        data=json.dumps(user_data)
    )
    response_body = response.json()

    assert response.status_code == 200
    assert response_body is True

def test_post_createBook(token):
    global userId
    books = {
        'userId': userId,
        'collectionOfIsbns': [{'isbn': '9781449325862'}]
    }
    
    books_json = json.dumps(books, indent=4)
    print('\n' + books_json)

    response = requests.post(
        url=f'{url}BookStore/v1/Books',
        headers={
            'Content-Type': 'application/json',
            'Authorization': f'Bearer {token}'
        },
        data=books_json
    )

    # Verificar se a resposta é JSON antes de tentar decodificar
    try:
        response_body = response.json()
    except requests.exceptions.JSONDecodeError:
        print(f"Failed to decode JSON. Response text: {response.text}")
        raise

    assert response.status_code == 201
    assert 'books' in response_body
    assert response_body['books'][0]['isbn'] == isbn

def test_get_book():
    response = requests.get(
        url=f'{url}BookStore/v1/Book?ISBN={isbn}',
        headers=headers
    )

    response_body = response.json()
    
    assert response.status_code == 200
    assert response_body['isbn'] == isbn

if __name__ == "__main__":
    pytest.main()
