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
X-Request-Id: 735a2608-924e-4abb-8ab7-32399ed51ed8
X-Runtime: 0.011880
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
ETag: W/"be35036ec3ec5d5ecb53bd43fff621c9"
Location: http://www.example.com/users/1
Vary: Origin
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 684e0c17-0e8f-42d9-890b-430bf1cb56c5
X-Runtime: 0.011035
X-XSS-Protection: 1; mode=block

{
  "id": 1,
  "name": "test_user",
  "email": "test@example.com",
  "created_at": "2016-09-25T15:08:47.518Z",
  "updated_at": "2016-09-25T15:08:47.518Z"
}
```
