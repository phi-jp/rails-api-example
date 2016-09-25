## GET /users
Works! (now write some real specs).

### Example

#### Request
```
GET /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 2
Content-Type: application/json; charset=utf-8
ETag: W/"4f53cda18c2baa0c0354bb5f9a3ecbe5"
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d3b71b42-9fde-4f61-98ae-4918396b0da9
X-Runtime: 0.013839
X-XSS-Protection: 1; mode=block

[

]
```

## POST /users
ユーザーを作成.

### Example

#### Request
```
POST /users HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 51
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

user[name]=test_user&user[email]=test%40example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 134
Content-Type: application/json; charset=utf-8
ETag: W/"8d34ae16415125dd66d0da37e1d14c61"
Location: http://www.example.com/users/1
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: da5a7add-8622-4162-b016-9b1cbd2444fd
X-Runtime: 0.018441
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "name": "test_user",
  "email": "test@example.com",
  "created_at": "2016-09-25T14:56:28.373Z",
  "updated_at": "2016-09-25T14:56:28.373Z"
}
```
